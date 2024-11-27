#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);

    connect(ui->CreateBtns,&QPushButton::clicked,[=](){ this->createBtns(ui->EditCreateBtns->text().toInt());});
    connect(ui->createBtn,&QPushButton::clicked,[=](){ this->createBtn(ui->EditCreateBtn->text().toInt());});
    connect(ui->delBtn_2,&QPushButton::clicked,[=](){ this->delBtns();});
    connect(ui->delBtn,&QPushButton::clicked,[=](){ this->delBtn(ui->EditdelBtn->text().toInt());});
}

Widget::~Widget()
{
    delete ui;
}

void Widget::createBtns(int nums)
{
    this->clearLayout(ui->verticalLayout);

    for(int i=0;i<nums;i++)
    {
        QPushButton* btn = new QPushButton(QString("%1").arg(i));
        ui->verticalLayout->addWidget(btn);
    }
}

void Widget::createBtn(int num)
{
    int itemCount = ui->verticalLayout->count(); // 获取布局中的控件数量
        for (int i = 0; i < itemCount; ++i) {
            QLayoutItem *item = ui->verticalLayout->itemAt(i);

            // 检查控件是否为按钮类型
            if (QPushButton *button = qobject_cast<QPushButton *>(item->widget())) {
                if(button->text().toInt()>num){
                     QPushButton* btn = new QPushButton(QString("%1").arg(num));
                    ui->verticalLayout->insertWidget(i, btn);
                    break;
                }
            }
        }
}

void Widget::delBtns()
{
    clearLayout(ui->verticalLayout);
}

void Widget::delBtn(int num)
{
    int itemCount = ui->verticalLayout->count(); // 获取布局中的控件数量
        for (int i = 0; i < ui->verticalLayout->count(); ++i) {
            QLayoutItem *item = ui->verticalLayout->itemAt(i);

            // 检查控件是否为按钮类型
            if (QPushButton *button = qobject_cast<QPushButton *>(item->widget())) {
                if(button->text().toInt()==num){
                    //ui->verticalLayout->takeAt(i); // 从布局中移除该项
                    ui->verticalLayout->removeItem(item);
                    button->deleteLater(); // 删除按钮控件

                    delete item; // 删除布局项
                }
            }
        }
}

void Widget::clearLayout(QLayout *layout)
{
    if (!layout) return;

    // 遍历布局中的所有控件
    while (QLayoutItem* item = layout->takeAt(0)) {
        // 如果是布局项本身，递归删除子控件
        if (QWidget* widget = item->widget()) {
            widget->setParent(nullptr); // 解除控件的父子关系
            delete widget; // 删除控件
        }

        // 检查是否有嵌套布局，递归清除
        if (QLayout* subLayout = item->layout()) {
            clearLayout(subLayout);
        }

        delete item; // 删除布局项
    }
}

