
/**
 * 检测Windows环境宏_WIN32 设置_WIN32_WINNT 为 0x0601
 * 0x0601 表示 Windows 7
 */
#ifdef _WIN32
#define _WIN32_WINNT 0x0601
#endif


#include <iostream>
#include "asio.hpp"
// #include "asio/ssl.hpp"

using asio::ip::tcp;

template<class T>
void HandlwRequest(T& socket,const std::string&server,const std::string& path)
{
    std::string request = "GET " + path + "HTTP/1.1\r\n";
    request += "Host: " + server + "\r\n";
    request += "Accept: */*\r\n";
    request += "Connection: close\r\n\r\n";

    asio::write(socket,asio::buffer(request));

    char buffer[1024];
    asio::error_code error;

    while (size_t len = socket.read_some(asio::buffer(buffer),error))
    {
        std::cout.write(buffer,len);
    }
    
}
void HttpRequest(const std::string& server,const std::string& path)
{
    asio::io_context io_context;

    tcp::resolver resolver(io_context);
    auto endpoints = resolver.resolve(server,"http");

    tcp::socket socket(io_context);

    asio::connect(socket,endpoints);

    HandlwRequest(socket,server,path);
}

int main()
{
    const std::string server = "baidu.com";
    const std::string path = "/";

    try
    {
        HttpRequest(server,path);
    }
    catch(const std::exception& e)
    {
        std::cerr <<"EXception  " <<e.what() << '\n';
    }
    
}
