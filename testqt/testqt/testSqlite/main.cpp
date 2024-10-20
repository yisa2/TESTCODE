#include "widget.h"

#include <QApplication>
#include "sqliteclass.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
//    Widget w;
//    w.show();

    SqliteClass sqlie;


    return a.exec();
}
