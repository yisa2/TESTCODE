#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>

#include "MyOpenGLWidget.h"
#include <QTimer>

QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

    struct Point3D {
        double x;
        double y;
        double z;
    };

    // 获取球面上一个随机点的函数
    Point3D getRandomPointOnSphere(double radius, double cx = 0.0, double cy = 0.0, double cz = 0.0);

private:
    Ui::Widget *ui;
    QTimer * m_timer;
    MyOpenGLWidget* m_MyOpenGLWidget;

    QVector<float> m_points;
    QVector<int> m_model;

    double m_count = 0;
};
#endif // WIDGET_H
