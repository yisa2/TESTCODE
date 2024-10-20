#ifndef MODBUSCLIENTTCP_H
#define MODBUSCLIENTTCP_H

#include <QObject>
#include <QModbusTcpClient>
#include <QModbusDataUnit>
#include <QModbusReply>
#include <QDebug>
#include <QTimer>
#include <QTime>
#include <QMutex>
#include <QMutexLocker>

// ²»×èÈû¶¨Ê±Æ÷
struct sModbusTimer
{
	QTime time;
	uint32_t interval;

	void start(uint32_t t)
	{
		interval = t;
		time.start();
	};

	bool isTimeOut()
	{
		return time.elapsed() > interval;
	};
};

class ModbusClientTcp : public QObject
{
    Q_OBJECT
public:
    explicit ModbusClientTcp(QObject *parent = nullptr);
    ~ModbusClientTcp();

    void init();
    void setMode(int flag=0);


    bool isConnected();
	bool writeRegister16(uint16_t uAddr, uint16_t uValue);

private:

public slots:
    bool connect(QString strIp, int nPort);
public slots:
    void slotErrorOccurred(QModbusDevice::Error error);
    void slotStateChanged(QModbusDevice::State state);
    void slotConnectDevice();
    void slotReadyRead();
    void slotReadyWrite();
    void slotReadRegisterData(int nStartAddress, int nNum, int type = QModbusDataUnit::HoldingRegisters);
    void slotReadRegisterDataSync(int nStartAddress, int nNum, int type = QModbusDataUnit::HoldingRegisters);
    void slotWriteRegisterData(int nStartAddress, int uValue, int type = QModbusDataUnit::HoldingRegisters);
    void slotDealWithTimerOut();

signals:
    void sendMessage(QVector<quint16> value);
    void signalConnectDevice();
    void signalReadRegisterData(int, int, int);
	void signalWriteRegisterData(int, int, int);
    void workFinished();
    void signalStateChanged(int state);
    void sendReadMsg(QString readmsg);
    void sendErrorMsg(QString readmsg);
private:
    QModbusTcpClient* m_pClient;
    bool m_bConnected = false;
    bool m_bAppClose = false;
    QTimer *m_timer;
    QVector<qint16> results;
    int nStep = 0;
	sModbusTimer timeout;
	QMutex m_mutex;
	int m_flag = 0;
};

#endif // MODBUSCLIENTTCP_H
