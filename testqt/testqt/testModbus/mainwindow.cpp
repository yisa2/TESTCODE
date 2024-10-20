#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "testfrm.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->setWindowTitle("modbus-tcp test");
    m_testFrm = new testFrm(this);
    this->setCentralWidget(m_testFrm);
}

MainWindow::~MainWindow()
{
    delete ui;
}

