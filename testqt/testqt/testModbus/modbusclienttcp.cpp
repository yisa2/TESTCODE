#include "modbusclienttcp.h"

#include<QTime>
#include<QThread>
#include<QEventLoop>


ModbusClientTcp::ModbusClientTcp(QObject *parent) : QObject(parent)
{

}

ModbusClientTcp::~ModbusClientTcp()
{
    emit workFinished();
    m_bAppClose = true;


    if (m_bConnected)
        m_pClient->disconnect();

    if (m_pClient != nullptr)
    {
        delete m_pClient;
        m_pClient = nullptr;
    }
}
void ModbusClientTcp::init()
{
	results.resize(100);
    m_pClient = new QModbusTcpClient();
    m_timer = new QTimer();
    QObject::connect(m_timer,&QTimer::timeout,this,&ModbusClientTcp::slotDealWithTimerOut);

    QObject::connect(this, &ModbusClientTcp::signalConnectDevice, this, &ModbusClientTcp::slotConnectDevice);
    QObject::connect(this, &ModbusClientTcp::signalReadRegisterData, this, &ModbusClientTcp::slotReadRegisterData);
//    QObject::connect(this, &ModbusClientTcp::signalReadRegisterData, this, &ModbusClientTcp::slotReadRegisterDataSync);
    QObject::connect(this, &ModbusClientTcp::signalWriteRegisterData, this, &ModbusClientTcp::slotWriteRegisterData);
}
void ModbusClientTcp::setMode(int flag)
{
	m_flag = flag;
}
bool ModbusClientTcp::writeRegister16(uint16_t uAddr, uint16_t uValue)
{
	bool bRet = true;
	signalWriteRegisterData(uAddr, uValue, (int)QModbusDataUnit::RegisterType::HoldingRegisters);
	return bRet;
}
bool ModbusClientTcp::connect(QString strIp, int nPort)
{
    if (m_bConnected)
        return true;

    if (m_pClient==nullptr)
    {
        qDebug()<<"m_pClient==nullptr";
        return false;
    }

    QObject::connect(m_pClient, &QModbusTcpClient::stateChanged, this, &ModbusClientTcp::slotStateChanged);
    QObject::connect(m_pClient, &QModbusTcpClient::errorOccurred, this, &ModbusClientTcp::slotErrorOccurred);
	


    m_pClient->setConnectionParameter(QModbusDevice::NetworkPortParameter, QVariant::fromValue(nPort));
    m_pClient->setConnectionParameter(QModbusDevice::NetworkAddressParameter, QVariant::fromValue(strIp));
    m_pClient->setTimeout(1000);
    m_pClient->setNumberOfRetries(3);

    m_pClient->connectDevice();

    if (m_bConnected)
    {
        qDebug() << "connect successed" << "\n";
    }
    else {
        qDebug() << m_pClient->errorString() << "\n";
        return false;
    }

    return m_bConnected;
}
// 错误触发，如果有错误打印日志
void ModbusClientTcp::slotErrorOccurred(QModbusDevice::Error error)
{
    qDebug() << "ModbusClient Error Num:" << error << "\n";
    qDebug() << "ModbusClient Error Info:" << m_pClient->errorString() << "\n";
    emit sendErrorMsg(m_pClient->errorString());
}

// 连接状态变化
void ModbusClientTcp::slotStateChanged(QModbusDevice::State state)
{
    switch (state)
    {
    case QModbusDevice::UnconnectedState:
    {
        m_bConnected = false;
    }break;
    case QModbusDevice::ConnectedState:
    {
        m_bConnected = true;
        if(!m_timer->isActive())
        {
            m_timer->start(20);
        }
    }break;
    case QModbusDevice::ClosingState:
    {
        m_bConnected = false;
    }break;
    default:
        break;
    }

    emit signalStateChanged(state);
    qDebug() << "ModbusClient StateChanged:" << state << "\n";
}

void ModbusClientTcp::slotConnectDevice()
{
    if (!m_bConnected)
        m_pClient->connectDevice();
}

void ModbusClientTcp::slotReadyRead()
{
	qDebug() << "void slotReadyRead : tid = " << QThread::currentThreadId();

    auto reply = qobject_cast<QModbusReply*>(sender());
    if (reply)
    {
        if (reply->error() == QModbusDevice::NoError)
        {
            m_pClient->disconnect(SIGNAL(timeoutChanged(int)), 0, 0);
            const QModbusDataUnit unit = reply->result();
            uint16_t nStartAddr = unit.startAddress();
            qDebug()<<nStartAddr;
            auto valueList = unit.values();
            QString msg;
            for (int i = 0; i < valueList.size()&&i<results.size(); i++)
            {
                results[i] = static_cast<qint16>(valueList[i]);
                msg = msg + QString::number(results[i])+"  ";
            }
            qDebug()<<"--"<<results;
            emit sendReadMsg(msg);
        }
        else
        {
            qDebug() << "ReadyRead Error:" << reply->errorString() << "\n";
            emit sendErrorMsg(reply->errorString());
            qDebug() << "Modbus Exception Response:" << reply->errorString()
                             << "(Modbus exception code:" << reply->rawResult().exceptionCode() << ")";
        }

        reply->deleteLater();
    }
}

void ModbusClientTcp::slotReadyWrite()
{
	auto reply = qobject_cast<QModbusReply*>(sender());
	if (reply->error() != QModbusDevice::NoError)
    {
        qDebug() << "write response error:" << reply->errorString();
        emit sendErrorMsg(reply->errorString());
    }

}

void ModbusClientTcp::slotReadRegisterData(int nStartAddress, int nNum, int type)
{
	QMutexLocker locker(&m_mutex);
	qDebug() << "void slotReadRegisterData : tid = " << QThread::currentThreadId();
	
    QModbusDataUnit readUnit((QModbusDataUnit::RegisterType)type, nStartAddress, nNum);

    if (auto* reply = m_pClient->sendReadRequest(readUnit, 1/*SERVER_ID*/))
    {
        m_pClient->disconnect(SIGNAL(timeoutChanged(int)), 0, 0);
        if (!reply->isFinished())
            QObject::connect(reply, &QModbusReply::finished, this, &ModbusClientTcp::slotReadyRead);
		else 
		{
			qDebug() << "delete reply;";
			delete reply;
		}
            
    }
    else
    {
        qDebug() << m_pClient->errorString();
        emit sendErrorMsg(m_pClient->errorString());
    }
}

void ModbusClientTcp::slotReadRegisterDataSync(int nStartAddress, int nNum, int type)
{
    QMutexLocker locker(&m_mutex);
    qDebug() << "void slotReadRegisterData : tid = " << QThread::currentThreadId();

    QModbusDataUnit readUnit((QModbusDataUnit::RegisterType)type, nStartAddress, nNum);

    if (auto* reply = m_pClient->sendReadRequest(readUnit, 1/*SERVER_ID*/))
    {
        m_pClient->disconnect(SIGNAL(timeoutChanged(int)), 0, 0);

        if (!reply->isFinished())
        {
            QEventLoop loop;
            QObject::connect(reply, &QModbusReply::finished,&loop,&QEventLoop::quit);
            loop.exec();
        }

        if (reply->error() == QModbusDevice::NoError) {
            m_pClient->disconnect(SIGNAL(timeoutChanged(int)), 0, 0);
            const QModbusDataUnit unit = reply->result();
            uint16_t nStartAddr = unit.startAddress();
            qDebug()<<nStartAddr;
            auto valueList = unit.values();
            QString msg;
            for (int i = 0; i < valueList.size()&&i<results.size(); i++)
            {
                results[i] = static_cast<qint16>(valueList[i]);
                msg = msg + QString::number(results[i])+"  ";
            }
            qDebug()<<"--"<<results;
            emit sendReadMsg(msg);
        }else
        {
            qDebug() << "ReadyRead Error:" << reply->errorString() << "\n";
            emit sendErrorMsg(reply->errorString());
        }

        reply->deleteLater();
    }else
    {
        qDebug() << m_pClient->errorString();
        emit sendErrorMsg(m_pClient->errorString());
    }
}

void ModbusClientTcp::slotWriteRegisterData(int nStartAddress, int uValue, int type)
{
    qDebug() << "void slotWriteRegisterData : tid = " << QThread::currentThreadId();
	if (!m_bConnected)
		return;

    QMutexLocker locker(&m_mutex);


	const int nLength = 1;
	QModbusDataUnit writeUnit((QModbusDataUnit::RegisterType)type, nStartAddress, nLength);
	writeUnit.setValue(0, uValue);

	auto* reply = m_pClient->sendWriteRequest(writeUnit, 1 /*SERVER_ID*/);
	if (reply != nullptr)
	{
		if (!reply->isFinished())
		{
			QObject::connect(reply, &QModbusReply::finished, this, &ModbusClientTcp::slotReadyWrite);
		}
		reply->deleteLater();

	}
	else
    {
		qDebug() << "write request error:" << m_pClient->errorString();
        emit sendErrorMsg(m_pClient->errorString());
    }
}
void ModbusClientTcp::slotDealWithTimerOut()
{
    switch (nStep)
    {
    case 0:
    {
        if (!m_bConnected)
        {
            timeout.start(3 * 1000);
            nStep = 1;
        }
        else
            nStep = 2;

    }break;
    case 1:
    {
        if (timeout.isTimeOut() && !m_bConnected)
        {
            // 通过发送信号，再次连接设备，不同线程需要用信号发送
            emit signalConnectDevice();
            nStep = 0;
        }
        else if (m_bConnected)
            nStep = 0;

    }break;

    case 2:
    {
		qDebug() << "void slotDealWithTimerOut : tid = " << QThread::currentThreadId();

		if (m_flag == 0)
		{
			// 后台不断刷新读取
            emit signalReadRegisterData(32,16,QModbusDataUnit::HoldingRegisters);

            qsrand(QTime::currentTime().msec());
            //emit signalWriteRegisterData(rand() % 16/* + 32*/, rand(),4);
        }else{
            qsrand(QTime::currentTime().msec());
            emit signalWriteRegisterData(rand() % 16/* + 32*/, rand(),4);
        }
        nStep = 0;
    }break;
    default:
        break;
    }
}

