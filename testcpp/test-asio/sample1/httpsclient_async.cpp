
/**
 * 检测Windows环境宏_WIN32 设置_WIN32_WINNT 为 0x0601
 * 0x0601 表示 Windows 7
 */
#ifdef _WIN32
#define _WIN32_WINNT 0x0601
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <wincrypt.h>
#endif

#include <iostream>
#include "asio.hpp"
#include "asio/ssl.hpp"
// #include <openssl/x509.h>
// #include <openssl/pem.h>

using asio::ip::tcp;

class AsyncHttpsClient
{
private:
    /* data */
public:
    AsyncHttpsClient(asio::io_context &io_context,
                     asio::ssl::context &ssl_context,
                     const std::string& server,
                     const std::string& path);
    ~AsyncHttpsClient();
    void Start();

private:
    void Resolve();
    void Connect(const tcp::resolver::results_type& endpoints);
    void Handshake();
    void SendRequest();
    void ReceiveResponse();


    // 域名解析器
    tcp::resolver resolver_;
    // SSL socket
    asio::ssl::stream<tcp::socket> socket_;
    // 服务器地址 请求路径
    std::string server_,path_;
    // 请求内容 响应内容
    asio::streambuf request_,response_;
};

AsyncHttpsClient::AsyncHttpsClient(asio::io_context &io_context,
                                   asio::ssl::context &ssl_context,
                                   const std::string& server,
                                   const std::string& path)
        :resolver_(io_context),
        socket_(io_context,ssl_context),
        server_(server),
        path_(path)
{}

AsyncHttpsClient::~AsyncHttpsClient()
{
}

void AsyncHttpsClient::Start()
{
    Resolve();
}

void AsyncHttpsClient::Resolve() {
    resolver_.async_resolve(
        server_,"https",
        [this](const asio::error_code& rc,tcp::resolver::results_type results){
            if(!rc){
                Connect(results);
            }else{
                std::cerr<<"Connect failed: "<< rc.message() <<std::endl;
            }
        }
    );
}

void AsyncHttpsClient::Connect(const tcp::resolver::results_type &endpoints) {
    // 异步连接
    asio::async_connect(
        socket_.lowest_layer(),endpoints,
        [this](const asio::error_code& rc,const tcp::endpoint& endpoint){
            if(!rc){
                Handshake();
            }else{
                std::cerr<<"Connect failed: "<< rc.message() <<std::endl;
            }
        }
    );
}

void AsyncHttpsClient::Handshake() {
    socket_.async_handshake(
        asio::ssl::stream_base::client,[this](const asio::error_code& ec){
            if(!ec){
                SendRequest();
            }else{
                std::cerr<<"Handshake failed: "<< ec.message() <<std::endl;
            }
        }
    );
}

void AsyncHttpsClient::SendRequest() {
    std::ostream request_stream(&request_);
    request_stream<< "GET " << path_ << "HTTP/1.1\r\n";
    request_stream << "Host: " << server_ << "\r\n";
    request_stream << "Accept: */*\r\n";
    request_stream << "Connection: close\r\n\r\n";

    asio::async_write(socket_,request_,
        [this](const asio::error_code& ec,std::size_t){
            if(!ec){
                ReceiveResponse();
            }else{
                std::cerr<<"Write failed: "<< ec.message() <<std::endl;
            }
        }
    );
}

void AsyncHttpsClient::ReceiveResponse() {
    asio::async_read(socket_,response_,
    [this](const asio::error_code& ec,std::size_t){
            if(!ec||asio::error::eof){
                std::cout<<&response_;
            }else{
                std::cerr<<"Read failed: "<< ec.message() <<std::endl;
            }
        }
    );
}

void AddWindowsRootCerts(asio::ssl::context &ctx)
{
    // 打开系统的 root 证书存储区
    HCERTSTORE sys_store = CertOpenSystemStore(NULL, "ROOT");
    if (!sys_store)
    {
        std::cerr << "Failed to open certificate store" << std::endl;
        return;
    }

    // 创建一个新的X509存储区
    X509_STORE *store = X509_STORE_new();
    PCCERT_CONTEXT cert_Context = NULL;
    // 遍历系统存储的所有证书
    while ((cert_Context =
                CertEnumCertificatesInStore(sys_store, cert_Context)) != NULL)
    {
        X509 *x509 =
            d2i_X509(NULL, (const unsigned char **)&cert_Context->pbCertEncoded,
                     cert_Context->cbCertEncoded);
        if (x509)
        {
            // 将 X509证书添加到存储区
            X509_STORE_add_cert(store, x509);
            // 释放
            X509_free(x509);
        }
    }

    // 释放证书上下文
    CertFreeCertificateContext(cert_Context);
    // 关闭存储区
    CertCloseStore(sys_store, 0);
    // 将存储区设置为 asio SSL 上下文的证书存储
    SSL_CTX_set_cert_store(ctx.native_handle(), store);
}

template <class T>
void HandlwRequest(T &socket, const std::string &server, const std::string &path)
{
    std::string request = "GET " + path + "HTTP/1.1\r\n";
    request += "Host: " + server + "\r\n";
    request += "Accept: */*\r\n";
    request += "Connection: close\r\n\r\n";

    std::cout << "request\n"
              << request << std::endl;
    asio::write(socket, asio::buffer(request));

    char buffer[1024];
    asio::error_code error;

    while (size_t len = socket.read_some(asio::buffer(buffer), error))
    {
        std::cout.write(buffer, len);
    }
}
void HttpsRequest(const std::string &server, const std::string &path)
{
    asio::io_context io_context;
    asio::ssl::context ssl_context(asio::ssl::context::sslv23);
    ssl_context.set_default_verify_paths();
    ssl_context.set_verify_mode(asio::ssl::verify_peer);
#ifdef _WIN32
    // 添加证书
    AddWindowsRootCerts(ssl_context);
#endif

    tcp::resolver resolver(io_context);
    auto endpoints = resolver.resolve(server, "https");

    asio::ssl::stream<tcp::socket> socket(io_context, ssl_context);

    asio::connect(socket.lowest_layer(), endpoints);
    socket.handshake(asio::ssl::stream_base::client);

    HandlwRequest(socket, server, path);
}

int main()
{

    try
    {
        asio::io_context io_context;
        asio::ssl::context ssl_context(asio::ssl::context::sslv23);
        ssl_context.set_default_verify_paths();
        ssl_context.set_verify_mode(asio::ssl::verify_peer);
#ifdef _WIN32
        // 添加证书
        AddWindowsRootCerts(ssl_context);
#endif

        const std::string server = "github.com";
        const std::string path = "/ ";
        AsyncHttpsClient client(io_context, ssl_context, server, path);
        client.Start();
        io_context.run();
    }
    catch (const std::exception &e)
    {
        std::cerr << "EXception  " << e.what() << '\n';
    }
}
