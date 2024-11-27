#ifndef SOCKETCLIENT_H
#define SOCKETCLIENT_H

#include<asio.hpp>
#include<iostream>
#include<string>

class SocketClient
{
public:
    SocketClient(const std::string& host, const std::string& port);

    void sendCommand(std::string msg);
    std::string readMsg();
    void init(const std::string& host, const std::string& port);
private:

    asio::io_service io_service;
    asio::ip::tcp::socket m_socket;

};

#endif // SOCKETCLIENT_H
