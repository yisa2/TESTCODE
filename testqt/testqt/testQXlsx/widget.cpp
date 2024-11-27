#include "widget.h"
#include "ui_widget.h"
#include <QDebug>
#include <QFileDialog>
#include <QFile>
#include <QDomDocument>
#include <QFileInfo>
Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);

    connect(ui->btn_loadIn,&QPushButton::clicked,[=](){
        LoadIn();
    });

    connect(ui->btn_loadOut,&QPushButton::clicked,[=](){
        LoadOut();
    });
}


Widget::~Widget()
{
    delete ui;
}

void Widget::LoadIn()
{

    QString fileName = QFileDialog::getOpenFileName(NULL,("Open xlsx"),m_filePath,("file (*.xlsx)"));
    QFileInfo fileInfo(fileName);
    m_filePath = fileInfo.absolutePath();
    QXlsx::Document xlsx(fileName);
    // 初始化 50 行 × 50 列
    if (xlsx.load()) // load excel file
    {
        for (int row = 1; row <= 50; ++row) {
            QVector<double>data;
            for (int col = 1; col <= 50; ++col) {
                data.append(xlsx.read(row, col).toDouble());
            }
            if(data.size()>0)m_tempData.append(data);
        }
    }

    qDebug()<<m_tempData;
    //读取xml

    QString fileNameXml = QFileDialog::getOpenFileName(NULL,("Open xml"),m_filePath,("file (*.xml)"));
    // 打开 XML 文件
    QFile file(fileNameXml);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qDebug() << "Failed to open the file for reading.";
        return;
    }
    // 加载 XML 内容到 QDomDocument
    QDomDocument doc;
    if (!doc.setContent(&file)) {
        qDebug() << "Failed to parse the file into XML.";
        file.close();
        return;
    }
    file.close();




    for (int j=0;j<50/*COMP2D_YCOUNT_MAX*/;j++)
    {
        for (int i=0;i<50/*COMP2D_XCOUNT_MAX*/;i++)
        {
            // 查找指定节点
            QString eleText = QString("m_dCompPos%1_%2").arg(j).arg(i);
            QDomNodeList nodes = doc.elementsByTagName(eleText);
            if (nodes.isEmpty()) {
                qDebug() << "Node" << eleText << "not found in the XML.";
                return;
            }
            // 修改节点值
            QDomNode node = nodes.at(0);  // 假设该节点只出现一次
            if (node.isElement()) {
                node.firstChild().setNodeValue(QString::number(m_tempData[j][i]));  // 修改值
            }
        }
    }

    // 保存修改后的内容
    if (!file.open(QIODevice::WriteOnly | QIODevice::Text)) {
        qDebug() << "Failed to open the file for writing.";
        return;
    }
    QTextStream stream(&file);
    doc.save(stream, 4);  // 4 表示缩进空格数
    file.close();
    qDebug() << "File saved successfully!";
}

void Widget::LoadOut()
{
    QString fileNameXml = QFileDialog::getOpenFileName(NULL,("Open xml"),m_filePath,("file (*.xml)"));
    // 打开 XML 文件
    QFileInfo fileInfo(fileNameXml);
    m_filePath = fileInfo.absolutePath();
    QFile file(fileNameXml);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qDebug() << "Failed to open the file for reading.";
        return ;
    }
    // 加载 XML 内容到 QDomDocument
    QDomDocument doc;
    if (!doc.setContent(&file)) {
        qDebug() << "Failed to parse the file into XML.";
        file.close();
        return;
    }
    file.close();

    QXlsx::Document xlsx;
    // 初始化 50 行 × 50 列
    for (int row = 1; row <= 50; ++row) {
        for (int col = 1; col <= 50; ++col) {
            // 查找指定节点
            QString eleText = QString("m_dCompPos%1_%2").arg(row-1).arg(col-1);
            QDomNodeList nodes = doc.elementsByTagName(eleText);
            if (nodes.isEmpty()) {
                qDebug() << "Node" << eleText << "not found in the XML.";
                return;
            }

            // 获取第一个匹配的节点值
            QDomNode node = nodes.at(0);  // 假设该节点只出现一次
            if (node.isElement()) {
                xlsx.write(row, col, node.toElement().text());  // 返回节点文本内容
            }
        }
    }

    QString saveName = QFileDialog::getSaveFileName(NULL, ("Save File"),  m_filePath,("file (*.xlsx)"));
    xlsx.saveAs(saveName); // save the document as 'Test.xlsx'
}

