#include "plugintfrm.h"

#include<QPushButton>
#include<QHBoxLayout>

#include<QDebug>

void PlugIntFrm::initWiegt(QWidget *parent)
{
    QHBoxLayout *layout = new QHBoxLayout();

    parent->setLayout(layout);

    layout->addWidget(new QPushButton("Hello PlugIntFrm"));

    qDebug()<<"PlugIntFrm::initWiegt";
}
