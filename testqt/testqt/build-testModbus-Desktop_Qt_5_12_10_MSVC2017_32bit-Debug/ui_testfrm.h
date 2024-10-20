/********************************************************************************
** Form generated from reading UI file 'testfrm.ui'
**
** Created by: Qt User Interface Compiler version 5.12.10
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TESTFRM_H
#define UI_TESTFRM_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_testFrm
{
public:
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLineEdit *lineEdit_ip;
    QLineEdit *lineEdit_port;
    QLabel *label_state;
    QPushButton *btn_Connect;
    QSpacerItem *horizontalSpacer;
    QVBoxLayout *verticalLayout_3;
    QTextEdit *textEdit;
    QLabel *label_read;

    void setupUi(QWidget *testFrm)
    {
        if (testFrm->objectName().isEmpty())
            testFrm->setObjectName(QString::fromUtf8("testFrm"));
        testFrm->resize(702, 581);
        verticalLayout_2 = new QVBoxLayout(testFrm);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        lineEdit_ip = new QLineEdit(testFrm);
        lineEdit_ip->setObjectName(QString::fromUtf8("lineEdit_ip"));
        lineEdit_ip->setMaximumSize(QSize(100, 16777215));

        horizontalLayout->addWidget(lineEdit_ip);

        lineEdit_port = new QLineEdit(testFrm);
        lineEdit_port->setObjectName(QString::fromUtf8("lineEdit_port"));
        lineEdit_port->setMaximumSize(QSize(40, 16777215));

        horizontalLayout->addWidget(lineEdit_port);

        label_state = new QLabel(testFrm);
        label_state->setObjectName(QString::fromUtf8("label_state"));
        label_state->setMinimumSize(QSize(24, 24));
        label_state->setMaximumSize(QSize(24, 24));

        horizontalLayout->addWidget(label_state);

        btn_Connect = new QPushButton(testFrm);
        btn_Connect->setObjectName(QString::fromUtf8("btn_Connect"));

        horizontalLayout->addWidget(btn_Connect);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);


        verticalLayout->addLayout(horizontalLayout);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        textEdit = new QTextEdit(testFrm);
        textEdit->setObjectName(QString::fromUtf8("textEdit"));
        QFont font;
        font.setFamily(QString::fromUtf8("Consolas"));
        font.setPointSize(12);
        textEdit->setFont(font);
        textEdit->setReadOnly(true);

        verticalLayout_3->addWidget(textEdit);

        label_read = new QLabel(testFrm);
        label_read->setObjectName(QString::fromUtf8("label_read"));
        label_read->setMinimumSize(QSize(0, 60));
        label_read->setFont(font);

        verticalLayout_3->addWidget(label_read);


        verticalLayout->addLayout(verticalLayout_3);


        verticalLayout_2->addLayout(verticalLayout);


        retranslateUi(testFrm);

        QMetaObject::connectSlotsByName(testFrm);
    } // setupUi

    void retranslateUi(QWidget *testFrm)
    {
        testFrm->setWindowTitle(QApplication::translate("testFrm", "Form", nullptr));
        lineEdit_ip->setInputMask(QApplication::translate("testFrm", "000.000.000.000", nullptr));
        lineEdit_ip->setText(QApplication::translate("testFrm", "192.168.0.1", nullptr));
        lineEdit_port->setText(QApplication::translate("testFrm", "502", nullptr));
        label_state->setText(QString());
        btn_Connect->setText(QApplication::translate("testFrm", "connect", nullptr));
        label_read->setText(QApplication::translate("testFrm", "TextLabel", nullptr));
    } // retranslateUi

};

namespace Ui {
    class testFrm: public Ui_testFrm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TESTFRM_H
