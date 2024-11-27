#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);

    m_MyThread = new MyThread(this);
    m_MyThread->start();
}

Widget::~Widget()
{
    m_MyThread->stopServer();
    delete ui;
}

