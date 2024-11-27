#include "mythread.h"

MyThread::MyThread(QObject *parent) : QThread(parent)
{

}

MyThread::~MyThread()
{
    if(m_SocketServer!=NULL){
        m_SocketServer->stopServer();
        delete  m_SocketServer;
        m_SocketServer = NULL;
    }
    requestInterruption();
    quit();
    wait();
}

void MyThread::stopServer()
{
    if(m_SocketServer!=NULL){
        m_SocketServer->stopServer();
    }
    requestInterruption();
    quit();
    wait();
    if(m_SocketServer!=NULL){
        delete  m_SocketServer;
        m_SocketServer = NULL;
    }
}


void MyThread::run()
{
    m_SocketServer = new SocketServer();
    m_SocketServer->init();
//    m_SocketServer->initAsync();

    // 检查是否请求退出
    while (!isInterruptionRequested()) {
        QThread::msleep(100); // 避免忙等待
    }
}
