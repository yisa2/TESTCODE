#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>

QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();


    void createBtns(int nums);
    void createBtn(int num);
    void delBtns();
    void delBtn(int num);

    // 清空
    void clearLayout(QLayout *layout);

private:
    Ui::Widget *ui;
};
#endif // WIDGET_H
