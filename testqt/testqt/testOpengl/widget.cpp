#include "widget.h"
#include "ui_widget.h"
#include <cmath>
#include <cstdlib>  // For rand() and RAND_MAX
#include <QtMath>

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);

    m_timer = new QTimer();


    m_MyOpenGLWidget = new MyOpenGLWidget(this);
    ui->verticalLayout->addWidget(m_MyOpenGLWidget);
    connect(m_timer,&QTimer::timeout,[=](){
        m_count++;
        ui->label->setText("COUNT: " + QString::number(m_count));
        auto point3D = getRandomPointOnSphere(100,0,0,0);
        m_points.append(point3D.x);
        m_points.append(point3D.y);
        m_points.append(point3D.z);
        m_model.append((int)m_count%100);
        m_MyOpenGLWidget->updateLineVertices(m_points,m_model);
        qDebug()<<point3D.x<<point3D.y<<point3D.z;
    });
    m_timer->start(30);
}

Widget::~Widget()
{
    delete ui;
}

Widget::Point3D Widget::getRandomPointOnSphere(double radius, double cx, double cy, double cz)
{
       // 随机生成角度
       double theta = 2 * M_PI * (rand() / (double)RAND_MAX);  // 方位角 θ ∈ [0, 2π]
       double phi = acos(2 * (rand() / (double)RAND_MAX) - 1); // 极角 φ ∈ [0, π]

       // 计算球面点的坐标
       double x = cx + radius * sin(phi) * cos(theta);
       double y = cy + radius * sin(phi) * sin(theta);
       double z = cz + radius * cos(phi);

       return {x, y, z};
}

