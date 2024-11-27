#ifndef SOCKETSERVER_H
#define SOCKETSERVER_H


#include<asio.hpp>
#include<iostream>

class SocketServer
{
public:
    SocketServer();

    void init();
    void initAsync();
    void acceptConnection();   // 异步测试
    void test();
    void stopServer();
    void handleClient(asio::ip::tcp::socket socket);
private:
    asio::io_service io_service;

    bool m_isStop = false;
};

#endif // SOCKETSERVER_H
