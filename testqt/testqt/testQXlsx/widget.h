#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include "xlsxdocument.h"
#include "xlsxchartsheet.h"
#include "xlsxcellrange.h"
#include "xlsxchart.h"
#include "xlsxrichstring.h"
#include "xlsxworkbook.h"
using namespace QXlsx;
QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();


    void LoadIn();
    void LoadOut();
private:
    Ui::Widget *ui;

    QString m_filePath;
    QVector<QVector<double>> m_tempData;
};
#endif // WIDGET_H
