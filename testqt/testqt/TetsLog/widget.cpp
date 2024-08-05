#include "widget.h"
#include "ui_widget.h"

#include <QSettings>
#include <QDir>
#include <QDir>
#include <QTextStream>
#include <QTimer>
#include <QDateTime>
#include <QDebug>
Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    m_iListCnt = 0;

    QFont font = QFont("Consolas",14);
    ui->textEdit->setFont(font);
    ui->textEdit->document()->setMaximumBlockCount(500);
    ui->textEdit->setReadOnly(true);


    pwdDir =QDir::cleanPath(QCoreApplication::applicationDirPath() + QDir::separator())+"/Log";
    QDir qdir;
    if(!qdir.exists(pwdDir)){
         qdir.mkpath(pwdDir);
    }

    LoadIniFile();
    ReadLog();


    QTimer* m_timer= new QTimer();
    connect(m_timer,&QTimer::timeout,[&](){
        addLog();
    });
    m_timer->start(1000);
}

Widget::~Widget()
{

    DelSaveLog();
    SaveIniFile();
    delete ui;
}

void Widget::addLog()
{
    QString msg = QDateTime::currentDateTime().toString("yyyy-MMdd-hh-mm-ss");
    if (m_iListCnt >= 500)
    {
        ui->textEdit->setFocus();
        QTextCursor storeCursorPos = ui->textEdit->textCursor();
        ui->textEdit->moveCursor(QTextCursor::End, QTextCursor::MoveAnchor);
        ui->textEdit->moveCursor(QTextCursor::StartOfLine, QTextCursor::MoveAnchor);
        ui->textEdit->moveCursor(QTextCursor::End, QTextCursor::KeepAnchor);
        ui->textEdit->textCursor().removeSelectedText();
        ui->textEdit->textCursor().deletePreviousChar();
        ui->textEdit->setTextCursor(storeCursorPos);
        m_iListCnt--;
    };

    msg.append('\n');
    QTextCursor cursor = ui->textEdit->textCursor();
    cursor.movePosition(QTextCursor::Start);
    ui->textEdit->setTextCursor(cursor);
    ui->textEdit->insertPlainText(msg);

    ++m_iListCnt;
    m_logMsg.prepend(msg.trimmed());
    if (500 <= m_logMsg.size()) //500条日志，存入1个日志文件
    {
        SaveLog();
    }
}

void Widget::ReadLog()
{
    if(m_logFileIndex>9) m_logFileIndex=0;
    QString fileName = QString("%1/Log%2.txt").arg(pwdDir).arg(m_logFileIndex);

    int preLogFileIndex = m_logFileIndex - 1;
    if(preLogFileIndex<0) preLogFileIndex=9;
    QString prefileName = QString("%1/Log%2.txt").arg(pwdDir).arg(preLogFileIndex);

    short readcount = 0;
    QFile file(fileName);
    if (file.open(QIODevice::ReadWrite | QIODevice::Text))
    {
        QString line;
        QTextStream in(&file);  //用文件构造流
        //in.setCodec("utf-8");
        //line = in.readLine();	//读取一行放到字符串里
        while (!in.atEnd()&& readcount< m_logCount)//字符串有内容
        {
            line = in.readLine();//循环读取下行
            //将读取到的行数据转换为Unicode
            if (line.length() > 10)
            {
                ui->textEdit->append((line));
                m_logMsg.append(line);
                //m_iRecCnt++;
                m_iListCnt++;
                readcount++;
            }
        }
    }
    file.close();

    //
    QFile prefile(prefileName);

    if (prefile.open(QIODevice::ReadWrite | QIODevice::Text))
    {
        QString line;
        QTextStream in(&prefile);  //用文件构造流
        //in.setCodec("utf-8");

        while (!in.atEnd() && readcount < 500)//字符串有内容
        {
            line = in.readLine();//循环读取下行
            //将读取到的行数据转换为Unicode

            if (line.length() > 10)
            {
                ui->textEdit->append((line));
                m_iListCnt++;
                readcount++;
            }
        }
    }
    prefile.close();
}

void Widget::SaveLog()
{

    QString fileName = QString("%1/Log%2.txt").arg(pwdDir).arg(m_logFileIndex);
    qDebug()<<fileName;
    QFile file(fileName);

    if (file.open(QIODevice::WriteOnly | QIODevice::Text)) {
        QTextStream in(&file);

        QTextStream out(&file);
        out << m_logMsg.join('\n');

        file.close();

        m_logFileIndex++;
        if(m_logFileIndex>9) m_logFileIndex=0;

        m_logMsg.clear();
    }
}

void Widget::DelSaveLog()
{
    QString fileName = QString("%1/Log%2.txt").arg(pwdDir).arg(m_logFileIndex);
    qDebug()<<fileName;
    QFile file(fileName);
    if (file.open(QIODevice::ReadWrite | QIODevice::Text)) {
        QTextStream in(&file);

        // 读取所有行
        QStringList lines;
        while (!in.atEnd()) {
            lines << in.readLine();
        }

        int index = 0;
        for (; index < lines.size() && index < m_logMsg.size(); index++)
            lines[index] = m_logMsg[index];

        for (; index < m_logMsg.size(); index++)
            lines.append(m_logMsg[index]);

        //lines.remove
        for (int i = 500; i < lines.size(); i++)
            lines.removeAt(i);

        // 写回文件
        file.resize(0);

        QTextStream out(&file);
        out << lines.join("\n");

        file.close();
        m_logCount = m_logMsg.size();

    }
}

void Widget::LoadIniFile()
{
    QString filename = QString("%1/logINI/log.ini").arg(pwdDir);
    QFileInfo iniFlie(filename);
    if (iniFlie.isFile())
    {
        QSettings m_HmiRecordParamSettings(filename, QSettings::IniFormat);
        QString text;

        text = m_HmiRecordParamSettings.value("m_logCount").toString();
        if (text.isEmpty()) m_logCount = 0;
        else m_logCount = text.toInt();

        text = m_HmiRecordParamSettings.value("m_logFileIndex").toString();
        if (text.isEmpty()) m_logFileIndex = 0;
        else m_logFileIndex = text.toInt();

    }
}

void Widget::SaveIniFile()
{
    QString timeSettingfile = QString("%1/logINI/log.ini").arg(pwdDir);
    QSettings m_RunTimeSettings(timeSettingfile, QSettings::IniFormat);

    m_RunTimeSettings.setValue("m_logCount", m_logCount);
    m_RunTimeSettings.setValue("m_logFileIndex", m_logFileIndex);
}

