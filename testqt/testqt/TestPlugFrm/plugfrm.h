#ifndef PLUGFRM_H
#define PLUGFRM_H

#include <QWidget>

class PlugFrm:public QObject
{
    Q_OBJECT
public:
    explicit PlugFrm(){};

    virtual void initWiegt(QWidget* widget) = 0;

signals:

};

#define PluginInterface_iid "com.example.PluginInterface"
Q_DECLARE_INTERFACE(PlugFrm, PluginInterface_iid)

#endif // PLUGFRM_H
