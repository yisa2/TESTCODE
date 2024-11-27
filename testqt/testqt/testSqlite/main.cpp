#include "widget.h"

#include <QApplication>
#include "sqliteclass.h"
#include <QtDebug>

#include <QDebug>
#include <QTime>



int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Widget w;
    w.show();

    SqliteClass sqlie;

    QTime time;
    time.start();
    sqlie.transaction();
    sqlie.testRead();
    sqlie.commit();
    qDebug()<<"read: "<<time.elapsed()/1000.0<<"s";
    time.start();
    sqlie.transaction();
    sqlie.testUpdate();
    sqlie.commit();
    qDebug()<<"write: "<<time.elapsed()/1000.0<<"s";
    w.setWindowTitle(sqlie.m_log);
    return a.exec();
}
