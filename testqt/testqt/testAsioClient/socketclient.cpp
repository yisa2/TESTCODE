#include "socketclient.h"

SocketClient::SocketClient(const std::string& host, const std::string& port):m_socket(io_service)
{
    init(host, port);
}

void SocketClient::sendCommand(std::string msg)
{
    try {
        const std::string message = msg + "\n";
        asio::write(m_socket, asio::buffer(message) );
    }catch (std::exception& e) {
        std::cerr << e.what() << std::endl;
    }
}

std::string SocketClient::readMsg()
{
    try {
        asio::streambuf buf;
        asio::read_until(m_socket, buf, "\n" );
        std::string data = asio::buffer_cast<const char*>(buf.data());
        return data;
    }catch (std::exception& e) {
        std::cerr << e.what() << std::endl;
    }
    return "";
}

void SocketClient::init(const std::string& host, const std::string& port)
{
    try {
        asio::ip::tcp::resolver resolver(io_service);
        asio::ip::tcp::resolver::query query(host, port); //("localhost", "12345");
        asio::ip::tcp::resolver::iterator endpoint_iterator = resolver.resolve(query);

        asio::connect(m_socket, endpoint_iterator);
    }catch (std::exception& e) {
        std::cerr << e.what() << std::endl;
    }
}
