#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>

/******************************************************************************
 *
 * @file       widget.h
 * @brief      XXXX Function
 *
 * @author     li
 * @date       2024/08/01
 * @history
 * 实现显示Log信息，日志显示500条，保存为10个文件 log0---log9.
 *****************************************************************************/
QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

    void addLog();


private:
    void ReadLog();
    void SaveLog();
    void DelSaveLog();  // 退出时保存
    void LoadIniFile();
    void SaveIniFile();
private:
    Ui::Widget *ui;
    QString pwdDir;
    short m_iListCnt;
    short m_logCount;
    short m_logFileIndex;
    QStringList m_logMsg;
};
#endif // WIDGET_H
