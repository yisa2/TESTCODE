#ifndef MODBUSREADOBJ_H
#define MODBUSREADOBJ_H

#include <QObject>
#include <QTimer>
#include <QTime>
class ModbusReadObj : public QObject
{
    Q_OBJECT
public:
    explicit ModbusReadObj(QObject *parent = nullptr);
    ~ModbusReadObj();
    void init();
    //void write

public slots:
    void slotDealWithTimerOut();
    void setWriteState(bool state);

signals:
    void signalWriteData();
private:
    void writeData();
private:
    bool isWrite;
    QTimer *m_timer;
};

#endif // MODBUSREADOBJ_H
