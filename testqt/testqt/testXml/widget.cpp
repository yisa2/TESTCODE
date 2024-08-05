#include "widget.h"
#include "ui_widget.h"
#include "xmlfun.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    connect(ui->btnReadXml,&QPushButton::clicked,[=](){
        XMLFun fun;
        fun.readXmlQXmlStreamReader();
    });
}

Widget::~Widget()
{
    delete ui;
}

