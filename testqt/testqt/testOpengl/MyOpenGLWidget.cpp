#include "MyOpenGLWidget.h"
MyOpenGLWidget::MyOpenGLWidget(QWidget* parent) :
    QOpenGLWidget(parent),
    xtrans(0),ytrans(0),ztrans(0.0)
  //      verticesCnt(0)//顶点坐标计数
{

    QSurfaceFormat format;
    format.setAlphaBufferSize(24);
    format.setVersion(3,3);
    format.setSamples(24);//设置重采样次数，用于反走样

    this->setFormat(format);

    orthoScale = 100;
}
void MyOpenGLWidget::updateDrawValue(int value) {
    numSegments = value;
    if(value>0){
        xpos=m_lineVertices[value*3];
        ypos=m_lineVertices[value*3+1];
        zpos=m_lineVertices[value*3+2];
    }
    update();
}
void MyOpenGLWidget::updateLineVertices(QVector<float> m_Vertices,QVector<int> m_Models) {
    m_lineVertices = m_Vertices;
    m_lineVerticesModel = m_Models;
    numSegments = m_lineVertices.size() / 3;
    m_vertexBuffer.bind();
    m_vertexBuffer.allocate(m_lineVertices.constData(), m_lineVertices.size() * sizeof(float));
    m_vertexBuffer.release();
    update();
}
void MyOpenGLWidget::initializeGL()
{
    initializeOpenGLFunctions();
    initShaders();
    glLineWidth(1.2f); // 设置线条宽度
    glEnable(GL_LINE_SMOOTH);  // 开启线条抗锯齿
    glHint(GL_LINE_SMOOTH_HINT, GL_NICEST); // 设置线条抗锯齿的质量


    m_vertexBuffer.create();
    m_vertexBuffer.bind();
    m_vertexBuffer.setUsagePattern(QOpenGLBuffer::StaticDraw);
    m_vertexBuffer.allocate(m_lineVertices.constData(), m_lineVertices.size() * sizeof(float));

    this->glEnable(GL_DEPTH_TEST);


    view.setToIdentity();
    view.lookAt(QVector3D(0.0f,0.0f,3.0f),QVector3D(0.0f,0.0f,0.0f),QVector3D(0.0f,1.0f,0.0f));
}
void MyOpenGLWidget::paintGL()
{
    this->glClearColor(0.0f,0.0f,0.0f,1.0f);
    this->glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    if (!m_shaderProgram.isLinked()) {
        qDebug() << "Shader program not linked.";
        return;
    }

    if (!m_vertexBuffer.isCreated()) {
        qDebug() << "Vertex buffer not created.";
        return;
    }

    //定义参数
    QVector3D lightColor(1.0f,1.0f,1.0f);
    QVector3D objectColor(1.0f,0.0f,0.0f);//模型颜色
    QVector3D lightPos(100.0f,0.0f,0.0f);
    QVector3D viewPos(0.0f, 0.0f, 3.0f); // 观察者位置

    float specularStrength = 0.5f; // 设置镜面反射强度
    int shininess = 32;            // 设置高光集中度
    //传值到小程序
    m_shaderProgram.setUniformValue("objectColor",objectColor);
    m_shaderProgram.setUniformValue("lightColor",lightColor);
    m_shaderProgram.setUniformValue("lightPos", lightPos);
    m_shaderProgram.setUniformValue("viewPos", viewPos);
    m_shaderProgram.setUniformValue("specularStrength", specularStrength);
    m_shaderProgram.setUniformValue("shininess", shininess);
    m_shaderProgram.setUniformValue("view",view);
    m_shaderProgram.setUniformValue("projection", projection);

    // Each segment consists of two vertices, each with 6 components (3 position + 3 color)
    m_shaderProgram.bind();
    m_vertexBuffer.bind();
    m_shaderProgram.enableAttributeArray(0); // Vertex position
    m_shaderProgram.setAttributeBuffer(0, GL_FLOAT, 0, 3);


//    QOpenGLTexture * textureWall;
//    textureWall=new QOpenGLTexture(QImage(":/Assest/Texture/line1.jpg").mirrored());
//    textureWall->bind(0);

    GenZero();
    int state = -1;
    glEnable(GL_LINE_STIPPLE);//打开画线模式
    for (int i = 0; i < numSegments; ++i) {
        if(m_lineVerticesModel[i]!=state){
            if(m_lineVerticesModel[i]==0){
                m_shaderProgram.setUniformValue("objectColor",QVector3D(1,0,0));
                glLineStipple(2,0X11FF);//建立画线的模式
            }else if((m_lineVerticesModel[i]==1)||(m_lineVerticesModel[i]==2)||(m_lineVerticesModel[i]==3)){
                m_shaderProgram.setUniformValue("objectColor",QVector3D(0,1,0));
                glLineStipple(2,0XFFFF);//建立画线的模式
            }
            state = m_lineVerticesModel[i];
        }
        glDrawArrays(GL_LINE_STRIP, i,2);
    }
    glDisable(GL_LINE_STIPPLE);

    QVector3D objectColor2(0.0f,0.0f,1.0f);//模型颜色
    m_shaderProgram.setUniformValue("objectColor",objectColor2);
    // 单独设置圆球的位置变换

    GenMove(xpos,ypos,zpos);
    GLUquadric* quad = gluNewQuadric();
    gluSphere(quad, 1, 30, 30);
    gluDeleteQuadric(quad);

    drawAxes();

    //    m_shaderProgram.disableAttributeArray(0);
    //    m_vertexBuffer.release();
    //    m_shaderProgram.release();
}
QMatrix4x4 MyOpenGLWidget::GenZero(){
    QMatrix4x4 model;
    model.setToIdentity();
    model.translate(xtrans,ytrans,ztrans);
    model.rotate(rotation);
    m_shaderProgram.setUniformValue("model", model);
    return model;
}
QMatrix4x4 MyOpenGLWidget::GenMove(float x, float y, float z){
    QMatrix4x4 model;
    model.setToIdentity();
    model.translate(xtrans,ytrans,ztrans);
    model.rotate(rotation);
    model.translate(x,y,z); // 更新圆球位置
    m_shaderProgram.setUniformValue("model", model);
    return model;
}
// 绘制坐标轴
void MyOpenGLWidget::drawAxes()
{
    float sx=11,sy=1,sz = 0;
    float ll = 1;
    glLineWidth(3.2f); // 设置线条宽度
    // X轴 - 红色
    QVector3D xColor(1.0f, 0.0f, 0.0f);
    m_shaderProgram.setUniformValue("objectColor", xColor);
    drawArrow(QVector3D(0.0f, 0.0f, 0.0f), QVector3D(10.0f, 0.0f, 0.0f));
    sx=12,sy=0,sz = -1;
    glBegin(GL_LINES);
    glVertex3f(sx, sy, sz);
    glVertex3f(sx-2*ll, sy, sz+2*ll);
    glVertex3f(sx, sy, sz+2*ll);
    glVertex3f(sx-2*ll, sy, sz);
    glEnd();

    // Y轴 - 绿色
    QVector3D yColor(0.0f, 1.0f, 0.0f);
    m_shaderProgram.setUniformValue("objectColor", yColor);
    drawArrow(QVector3D(0.0f, 0.0f, 0.0f), QVector3D(0.0f, 10.0f, 0.0f));
    sx=1,sy=11,sz = 0;
    glBegin(GL_LINES);
    glVertex3f(sx, sy, sz);
    glVertex3f(sx-ll, sy+ll, sz);
    glVertex3f(sx-ll, sy+ll, sz);
    glVertex3f(sx, sy+2*ll, sz);
    glVertex3f(sx, sy+2*ll, sz);
    glVertex3f(sx-ll, sy+ll, sz);
    glVertex3f(sx-ll, sy+ll, sz);
    glVertex3f(sx-3*ll, sy+ll, sz);
    glEnd();

    // Z轴 - 蓝色
    QVector3D zColor(0.0f, 0.0f, 1.0f);
    m_shaderProgram.setUniformValue("objectColor", zColor);
    drawArrow(QVector3D(0.0f, 0.0f, 0.0f), QVector3D(0.0f, 0.0f, 10.0f));
    sx=1,sy=0,sz = 11;
    glBegin(GL_LINES);
    glVertex3f(sx, sy, sz);
    glVertex3f(sx, sy, sz+2*ll);
    glVertex3f(sx, sy, sz+2*ll);
    glVertex3f(sx-2*ll, sy, sz);
    glVertex3f(sx-2*ll, sy, sz);
    glVertex3f(sx-2*ll, sy, sz+2*ll);
    glEnd();

    glLineWidth(1.2f); // 设置线条宽度
}

// 绘制单个箭头
void MyOpenGLWidget::drawArrow(QVector3D start, QVector3D end)
{
    GenZero();
    glBegin(GL_LINES);
    glVertex3f(start.x(), start.y(), start.z());
    glVertex3f(end.x(), end.y(), end.z());
    glEnd();

    GenMove(end.x(), end.y(), end.z());

    //    glScalef(5.0f, 5.0f, 5.0f);  // 调整箭头头部的大小
    //    GLUquadric* quad = gluNewQuadric();
    //    gluCylinder(quad, 0.1, 0.0, 0.3, 16, 1);  // 绘制小锥体作为箭头头部
    //    gluDeleteQuadric(quad);
    m_shaderProgram.setUniformValue("objectColor",QVector3D(1,1,153.0/255.0));
    GLUquadric* quad = gluNewQuadric();
    gluSphere(quad, 0.5, 30, 30);
    gluDeleteQuadric(quad);

}
// 初始化着色器程序
void MyOpenGLWidget::initShaders() {
    // Vertex Shader
    m_shaderProgram.addShaderFromSourceCode(QOpenGLShader::Vertex, R"(
                                                                   #version 330 core
                                                                   layout (location = 0) in vec3 aPos;   // 位置变量的属性位置值为 0
                                                                   layout (location = 1) in vec3 aNormal; // 颜色变量的属性位置值为 1

                                                                   uniform mat4 model;
                                                                   uniform mat4 view;
                                                                   uniform mat4 projection;

                                                                   out vec3 FragPos;
                                                                   out vec3 Normal;
                                                                   void main() {
                                                                   gl_Position = projection * view * model * vec4(aPos, 1.0);
                                                                   Normal = mat3(model) * aNormal;//用于旋转时，使得法向量一起改变
                                                                   FragPos = vec3(model * vec4(aPos, 1.0));
                                                                   }
                                                                   )");

    // Fragment Shader
    m_shaderProgram.addShaderFromSourceCode(QOpenGLShader::Fragment, R"(
                                                                     #version 330 core
                                                                     in vec3 FragPos;
                                                                     in vec3 Normal;
                                                                     uniform vec3 objectColor;
                                                                     uniform vec3 lightColor;
                                                                     uniform vec3 lightPos;
                                                                     uniform vec3 viewPos;          // 新增的观察者位置
                                                                     uniform float specularStrength; // 镜面反射强度
                                                                     uniform int shininess;          // 控制高光集中度

                                                                     out vec4 color;
                                                                     out vec4 FragColor;

                                                                     void main() {
                                                                     float ambientStrength = 1;
                                                                     vec3 ambient = ambientStrength * lightColor;

                                                                     vec3 norm = normalize(Normal);
                                                                     vec3 lightDir = normalize(lightPos - FragPos);
                                                                     float diff = max(dot(norm, lightDir), 0.0);
                                                                     vec3 diffuse = diff * lightColor;

                                                                     // 镜面反射
                                                                     vec3 viewDir = normalize(viewPos - FragPos); // 计算观察方向
                                                                     vec3 reflectDir = reflect(-lightDir, norm);  // 计算反射向量
                                                                     float spec = pow(max(dot(viewDir, reflectDir), 0.0), shininess);
                                                                     vec3 specular = specularStrength * spec * lightColor;

                                                                     vec3 result = (ambient + diffuse + specular) * objectColor;
                                                                     FragColor = vec4(result, 0.8);
                                                                     }
                                                                     )");

    m_shaderProgram.link();
}

void MyOpenGLWidget::resizeGL(int w, int h)
{
    //    glViewport(0, 0, w, h);
    //    projection.setToIdentity();
    //    projection.perspective(90.0f,(GLfloat)w/(GLfloat)h, 0.001f, 100.0f);//视角-宽高比例-zNear-zFar
    ProjectionUpdate();
}

void MyOpenGLWidget::mousePressEvent(QMouseEvent *event) {
    mousePos = QVector2D(event->pos());
    event->accept();
}

void MyOpenGLWidget::mouseReleaseEvent(QMouseEvent *event) {
    //    if (event->button() == Qt::LeftButton) {
    //        m_isRotating = false;
    //    } else if (event->button() == Qt::MidButton) {
    //        m_isPanning = false;
    //    }
}

void MyOpenGLWidget::mouseMoveEvent(QMouseEvent *event) {
    QVector2D newPos = (QVector2D)event->pos();
    QVector2D diff = newPos - mousePos;
    if(event->buttons() == Qt::LeftButton){
        qreal angle = (diff.length())/3.6;

        QVector3D rotationAxis = QVector3D(diff.y(), diff.x(), 0.0).normalized();
        rotation = QQuaternion::fromAxisAndAngle(rotationAxis, angle) * rotation;
        mousePos = newPos;
    }else if (event->buttons() == Qt::MidButton) {
        // 处理平移
        xtrans += diff.x() * 0.1f;  // 控制平移的速度
        ytrans -= diff.y() * 0.1f;  // 控制平移的速度（通常y轴方向取负值）
        mousePos = newPos;  // 更新鼠标位置
    }
    this->update();
    event->accept();
}

void MyOpenGLWidget::wheelEvent(QWheelEvent *event){
    QPoint numDegrees = event->angleDelta();
    float zoomFactor = 0.1f;  // 调整缩放速率
    if(numDegrees.y()>0){
        orthoScale -= orthoScale * zoomFactor;
    }else{
        orthoScale += orthoScale * zoomFactor;
    }
    if (orthoScale < 0.02f) orthoScale = 0.02f;  // 限制最小缩放值

    ProjectionUpdate();
    event->accept();
}
void MyOpenGLWidget::viewFront() {
    rotation = QQuaternion::fromAxisAndAngle(QVector3D(0, 0, 1), 90)*QQuaternion::fromAxisAndAngle(QVector3D(1, 0, 0),90);
    update();
}

void MyOpenGLWidget::viewUp() {
    rotation = QQuaternion::fromAxisAndAngle(QVector3D(0,1, 0),90)*QQuaternion::fromAxisAndAngle(QVector3D(0,0, 1),180);
    update();
}
void MyOpenGLWidget::viewBack() {
    rotation = QQuaternion::fromAxisAndAngle(QVector3D(0, 0,1), 90)*QQuaternion::fromAxisAndAngle(QVector3D(1, 0,0),-90);
    update();
}

void MyOpenGLWidget::viewLeft() {
    rotation = QQuaternion::fromAxisAndAngle(QVector3D(0, 0, 1), -90)*QQuaternion::fromAxisAndAngle(QVector3D(0, 1, 0),-180);
    update();
}

void MyOpenGLWidget::viewRight() {
    rotation = QQuaternion::fromAxisAndAngle(QVector3D(0, 0, 1), 90);
    update();
}

void MyOpenGLWidget::viewDown() {
    rotation = QQuaternion::fromAxisAndAngle(QVector3D(0, 1, 0), 90);
    update();
}
void MyOpenGLWidget::ProjectionUpdate() {
    float aspectRatio = (float)width() / (float)height();
    projection.setToIdentity();
    projection.ortho(-aspectRatio * orthoScale, aspectRatio * orthoScale, -orthoScale, orthoScale,-400.0f, 400.0f);
    update();
}

void MyOpenGLWidget::amplify() {
    float zoomFactor = 0.1f;  // 调整缩放速率
    orthoScale -= orthoScale * zoomFactor;
    if (orthoScale < 0.02f) orthoScale = 0.02f;  // 限制最小缩放值
    ProjectionUpdate();
}
void MyOpenGLWidget::reduce() {
    float zoomFactor = 0.1f;  // 调整缩放速率
    orthoScale += orthoScale * zoomFactor;
    if (orthoScale < 0.02f) orthoScale = 0.02f;  // 限制最小缩放值
    ProjectionUpdate();
}

