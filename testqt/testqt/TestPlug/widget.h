#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>




/******************************************************************************
 *
 * @file       widget.h
 * @brief      测试插件式开发
 *
 * @author     li
 * @date       2024/11/26
 * @history
 *****************************************************************************/

#include"plugfrm.h"

QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

    bool initPlug();
private:
    Ui::Widget *ui;

    PlugFrm* m_PlugFrm = NULL;
};
#endif // WIDGET_H
