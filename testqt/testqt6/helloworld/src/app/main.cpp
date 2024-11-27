#include <QApplication>
#include <QDebug>
#include <QWidget>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QString str("hello world\n");

    QWidget w;
    w.resize(400,300 );
    w.show();
    
    return a.exec();
}
