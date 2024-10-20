#include "modbusreadobj.h"
#include <QThread>
#include <QDebug>

ModbusReadObj::ModbusReadObj(QObject *parent) : QObject(parent)
{

}

ModbusReadObj::~ModbusReadObj()
{

}

void ModbusReadObj::init()
{
    isWrite = false;
    m_timer = new QTimer();
    QObject::connect(m_timer,&QTimer::timeout,this,&ModbusReadObj::slotDealWithTimerOut);
}

void ModbusReadObj::setWriteState(bool state)
{
    qDebug()<<"state: "<<state;
    isWrite=state;
    if(state==false){
        if(m_timer->isActive()) m_timer->stop();
    }else{
        if(!m_timer->isActive()) m_timer->start(1000);
    }
}

void ModbusReadObj::writeData()
{
    qDebug() << "ModbusReadObj::writeData : tid = " << QThread::currentThreadId();
    emit signalWriteData();
}

void ModbusReadObj::slotDealWithTimerOut()
{
    if(isWrite)
    {
        writeData();
    }
}
