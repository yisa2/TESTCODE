#ifndef TESTFRM_H
#define TESTFRM_H

#include <QWidget>
#include <QModbusDevice>
#include <QTimer>
#include "modbusreadobj.h"


class ModbusClientTcp;
namespace Ui {
class testFrm;
}

class testFrm : public QWidget
{
    Q_OBJECT

public:
    explicit testFrm(QWidget *parent = nullptr);
    ~testFrm();

    void addLog(QString msg);
    void modbus_Connect();

public slots:
    void slotStateChanged(int state);
    void dealTimeout();
signals:
    void signalConnect(QString IP,int port);
    void signalWriteValue(int nStartAddress, int uValue, int type);
    void signalSendState(bool state);
private:
    void init();

private:
    Ui::testFrm *ui;
    ModbusClientTcp* m_ModbusClientTcp=NULL;
    ModbusReadObj * m_ModbusReadObj=NULL;
    bool Connectstate=false;
    QTimer* timer;
};

#endif // TESTFRM_H
