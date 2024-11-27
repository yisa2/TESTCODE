#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    m_SocketClient = new SocketClient("localhost","12345");

    connect(ui->lineEdit,&QLineEdit::returnPressed,[=](){
        m_SocketClient->sendCommand(ui->lineEdit->text().toStdString());
        QString readData = QString::fromStdString(m_SocketClient->readMsg());
        ui->textEdit->append(readData);
    });
}

Widget::~Widget()
{
    if(m_SocketClient!=NULL){
        delete m_SocketClient;
        m_SocketClient = NULL;
    }
    delete ui;
}

