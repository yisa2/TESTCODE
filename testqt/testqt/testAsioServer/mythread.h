#ifndef MYTHREAD_H
#define MYTHREAD_H

#include <QObject>
#include <QThread>

#include "socketserver.h"
#include <QMutex>
class MyThread : public QThread
{
    Q_OBJECT
public:
    explicit MyThread(QObject *parent = nullptr);
    ~MyThread();
    void init();
    void stopServer();
protected:

    void run() override;
signals:

private:
    SocketServer* m_SocketServer=NULL;
    QMutex m_Mutex;
};

#endif // MYTHREAD_H
