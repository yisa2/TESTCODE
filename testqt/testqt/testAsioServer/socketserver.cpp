#include "socketserver.h"
#include <QtDebug>
#include <thread>
#include <chrono>
SocketServer::SocketServer()
{

}
void SocketServer::handleClient(asio::ip::tcp::socket socket) {
    try {
        for (;;) {
            char data[512];
            asio::error_code error;

            size_t length = socket.read_some(asio::buffer(data), error);
            if (error == asio::error::eof) {
                std::cout << "Client disconnected." << std::endl;
                break; // 客户端断开连接
            } else if (error) {
                throw asio::system_error(error); // 处理其他错误
            }

            asio::write(socket, asio::buffer(data, length)); // 回显消息
        }
    } catch (std::exception& e) {
        std::cerr << "Client error: " << e.what() << std::endl;
    }
}

void SocketServer::init()
{
    try {
        asio::ip::tcp::acceptor acceptor(io_service, asio::ip::tcp::endpoint(asio::ip::tcp::v4(), 12345));


        while (!m_isStop) {
            asio::ip::tcp::socket m_socket(io_service);
            acceptor.accept(m_socket);  // 阻塞

            std::thread([this, socket = std::move(m_socket)]() mutable {
                handleClient(std::move(socket)); // 启动新线程处理客户端
            }).detach();
            std::this_thread::sleep_for(std::chrono::milliseconds(20));
        }

    } catch (std::exception& e) {
        std::cerr << e.what() << std::endl;
    }
}

void SocketServer::initAsync()
{
    acceptConnection();
    io_service.run();
}

void SocketServer::acceptConnection() {
    // 创建一个新的 socket 用于接受连接
    asio::ip::tcp::socket m_socket(io_service);
    asio::ip::tcp::acceptor acceptor(io_service, asio::ip::tcp::endpoint(asio::ip::tcp::v4(), 12345));
    // 异步接受连接
    acceptor.async_accept(m_socket, [this, m_socket = std::move(m_socket)](const asio::error_code& error) mutable {
        if (!error) {
            std::thread([this, socket = std::move(m_socket)]() mutable {
                handleClient(std::move(socket));  // 启动新线程处理客户端
            }).detach();
        } else {
            std::cerr << "Accept error: " << error.message() << std::endl;
        }

        // 继续等待其他连接
        if (!m_isStop) {
            acceptConnection();  // 继续接受连接，避免递归调用，而是通过回调继续
        }
    });
}

void SocketServer::test()
{
    qDebug()<<"SocketServer::test()";
    asio::io_service io_service;
    io_service.run(); // 运行I/O Service事件循环
    asio::ip::tcp::socket socket(io_service);

}

void SocketServer::stopServer()
{
    m_isStop  =true;
	io_service.stop();
}
