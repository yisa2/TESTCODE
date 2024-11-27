#ifndef PLUGINTFRM_H
#define PLUGINTFRM_H

#include <QObject>
#include <plugfrm.h>
#include <QtPlugin>


class PlugIntFrm:public PlugFrm
{
    Q_OBJECT
    Q_INTERFACES(PlugFrm)
    Q_PLUGIN_METADATA(IID PluginInterface_iid)
public:
    PlugIntFrm(){};

    void initWiegt(QWidget *parent) override;
};

#endif // QTPLUGIN_H
