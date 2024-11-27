#include "widget.h"
#include "ui_widget.h"

#include<QDir>
#include<QPluginLoader>
#include<QDebug>

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    if(initPlug())
    {
        m_PlugFrm->initWiegt(this);
        qDebug()<<"initPlug Success";
    }else{
        qDebug()<<"initPlug ERROR";
    }

    connect(ui->btn_Test,&QPushButton::clicked,[=](){

    });

}

Widget::~Widget()
{
    delete ui;
}

bool Widget::initPlug()
{
    QDir pluginsDir(QDir::cleanPath(QCoreApplication::applicationDirPath() + QDir::separator()));  //pluginsDir："../build-xxx-debug/debug"
//    pluginsDir.cd("plugins");
    foreach (QString fileName, pluginsDir.entryList(QDir::Files)) {
        qDebug()<<fileName;
        qDebug()<<pluginsDir.absoluteFilePath(fileName);
        QPluginLoader pluginLoader(pluginsDir.absoluteFilePath(fileName));
        QObject *plugin = pluginLoader.instance();
        if (plugin) {
            m_PlugFrm = qobject_cast<PlugFrm *>(plugin);
            if (m_PlugFrm)
                return true;
        }else{
            qDebug() << "Plugin cast failed. Check Q_DECLARE_INTERFACE and Q_PLUGIN_METADATA.";
            continue;
        }
    }
    return false;
}

