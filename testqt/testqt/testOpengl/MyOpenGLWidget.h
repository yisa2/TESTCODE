#ifndef MYOPENGLWIDGET_H
#define MYOPENGLWIDGET_H

#include <QOpenGLWidget>
#include<QVector>
#include<QOpenGLExtraFunctions>
#include<QOpenGLShaderProgram>
#include<QOpenGLVertexArrayObject>
#include<QOpenGLBuffer>
#include<QMatrix3x3>
#include<QMatrix4x4>
#include<QMouseEvent>
#include<QWheelEvent>
#include<gl/GLU.h>
#include <QOpenGLTexture>
#include <QVector3D>
class MyOpenGLWidget: public QOpenGLWidget, public QOpenGLExtraFunctions
{
    Q_OBJECT
private:
    struct VertexData
    {
        QVector3D pos;
        QVector3D normal;
        QVector3D color;
    };

public:
    int numSegments=1;
    MyOpenGLWidget(QWidget* parent = 0);

    void initializeGL() override;
    void paintGL() override;
    void resizeGL(int w, int h) override;


    void initShaders();
    void updateLineVertices(QVector<float> m_Vertices,QVector<int> m_Models);


    void mousePressEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;
    void mouseMoveEvent(QMouseEvent *event) override;
    void wheelEvent(QWheelEvent *event) override;
    void viewFront();
    void viewBack();
    void viewLeft();
    void viewRight();
    void viewUp();
    void viewDown();

public:
    QVector<float> m_lineVertices;
    QVector<int> m_lineVerticesModel;
    float xpos, ypos, zpos;
    float orthoScale = 5.0f;  // 视口缩放系数，可根据需要调整
    void drawArrow(QVector3D start, QVector3D end);
    void drawAxes();
    QMatrix4x4 GenZero();
    QMatrix4x4 GenMove(float x, float y, float z);
    void updateDrawValue(int value);
    void amplify();
    void reduce();
    void ProjectionUpdate();
private:
    int drawvalue=0;
    QMatrix4x4 model;
    QMatrix4x4 view;
    QMatrix4x4 projection;
    //    int verticesCnt;
    GLfloat xtrans,ytrans,ztrans;
    QVector2D mousePos;
    QQuaternion rotation;


    QOpenGLShaderProgram m_shaderProgram;
    QOpenGLBuffer m_vertexBuffer;

};

#endif // MYOPENGLWIDGET_H
