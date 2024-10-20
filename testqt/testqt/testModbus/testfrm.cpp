#include "testfrm.h"
#include "ui_testfrm.h"

#include<QDateTime>

#include "modbusclienttcp.h"
#include "QThread"


testFrm::testFrm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::testFrm)
{
    ui->setupUi(this);
    addLog("testFrm");
    init();
    timer = new QTimer();
    connect(timer,&QTimer::timeout,this,&testFrm::dealTimeout);
    timer->start(100);
}

testFrm::~testFrm()
{
    delete ui;
}

void testFrm::addLog(QString msg)
{
    // 获取当前日期和时间
    QDateTime currentDateTime = QDateTime::currentDateTime();
    // 自定义格式输出
    QString formattedDateTime = currentDateTime.toString("[yyyy-MM-dd hh:mm:ss]");

    ui->textEdit->append(formattedDateTime+msg);
}

void testFrm::modbus_Connect()
{
    QString IP = ui->lineEdit_ip->text();
    int port = ui->lineEdit_port->text().toInt();
    addLog("IP"+IP+" port:"+QString::number(port)+"start connect");
    emit signalConnect(IP,port);
}

void testFrm::slotStateChanged(int state)
{
    QString color = "rgb(255,0,0)"; // red
    Connectstate=false;
    switch (state)
    {
    case QModbusDevice::UnconnectedState:
    {
        addLog("connect state: UnconnectedState");
        color = "rgb(255,0,0)";
    }break;
    case QModbusDevice::ConnectedState:
    {
        addLog("connect state: ConnectedState");
        color = "rgb(0,255,0)";
        Connectstate = true;
    }break;
    case QModbusDevice::ClosingState:
    {
        addLog("connect state: ClosingState");
        color = "rgb(255,0,0)";
    }break;
    default:
        break;
    }
    QString styleLabel = QString("min-width:20px;min-height:20px;max-width:20px;max-height:20px;\
                        border-radius:10px;border:2px solid black; background-color: %1;").arg(color);
    ui->label_state->setStyleSheet(styleLabel);
    emit signalSendState(Connectstate);
}
void testFrm::dealTimeout()
{
    if(Connectstate)
    {
        qsrand(QTime::currentTime().msec());
        //emit signalWriteValue(rand() % 16 + 32, rand()%1000,4);
    }
}
void testFrm::init()
{
    m_ModbusClientTcp = new ModbusClientTcp();
    QThread *thread = new QThread();
    m_ModbusClientTcp->moveToThread(thread);

    connect(thread,&QThread::started,[=](){
        m_ModbusClientTcp->init();
    });
    connect(m_ModbusClientTcp,&ModbusClientTcp::workFinished,thread,&QThread::quit);
    connect(thread, &QThread::finished, m_ModbusClientTcp, &ModbusClientTcp::deleteLater);
    addLog(QString("Frm Thread:%1").arg(quintptr(QThread::currentThreadId())));

    connect(m_ModbusClientTcp,SIGNAL(signalStateChanged(int)),this,SLOT(slotStateChanged(int)));
    connect(ui->btn_Connect,&QPushButton::clicked,[=](){this->modbus_Connect();});
    connect(this,&testFrm::signalConnect,m_ModbusClientTcp,&ModbusClientTcp::connect);
    connect(this,&testFrm::signalWriteValue,m_ModbusClientTcp,&ModbusClientTcp::slotWriteRegisterData);
    connect(m_ModbusClientTcp, &ModbusClientTcp::sendReadMsg, [=](QString str) {ui->label_read->setText(str); });
    connect(m_ModbusClientTcp, &ModbusClientTcp::sendErrorMsg, this,[=](QString str) {addLog(str); });
    thread->start();


    m_ModbusReadObj = new ModbusReadObj();
    m_ModbusReadObj->moveToThread(thread);
    connect(thread,&QThread::started,[=](){m_ModbusReadObj->init();});
    connect(thread, &QThread::finished, m_ModbusReadObj, &ModbusReadObj::deleteLater);
    connect(this, &testFrm::signalSendState, m_ModbusReadObj, &ModbusReadObj::setWriteState);
    connect(m_ModbusReadObj,&ModbusReadObj::signalWriteData,this,[=](){
        qsrand(QTime::currentTime().msec());
        emit signalWriteValue(rand() % 16 + 32, rand()%1000,4);});




//    m_ModbusReadObj = new ModbusReadObj();
//    QThread *threadWrite = new QThread();
//    m_ModbusReadObj->moveToThread(threadWrite);
//    connect(threadWrite,&QThread::started,[=](){m_ModbusReadObj->init();});
//    connect(threadWrite, &QThread::finished, m_ModbusReadObj, &ModbusReadObj::deleteLater);
//    connect(this, &testFrm::signalSendState, m_ModbusReadObj, &ModbusReadObj::setWriteState);
//    connect(m_ModbusReadObj,&ModbusReadObj::signalWriteData,this,[=](){
//        qsrand(QTime::currentTime().msec());
//        emit signalWriteValue(rand() % 16 + 32, rand()%1000,4);});
//    threadWrite->start();
}
