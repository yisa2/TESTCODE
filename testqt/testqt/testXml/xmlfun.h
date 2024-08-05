#ifndef XMLFUN_H
#define XMLFUN_H

#include <QObject>
#include <QDomNode>

/******************************************************************************
 *
 * @file       xmlfun.h
 * @brief      XXXX Function
 *
 * @author     li
 * @date       2024/08/02
 * @history
 * XML 操纵
 *****************************************************************************/

class XMLFun : public QObject
{
    Q_OBJECT
public:
    explicit XMLFun(QObject *parent = nullptr);

    void readXML(QString fileName="");  //QDomDocument
    void readXmlQXmlStreamReader(QString fileName="");

private:
    void traverseNode(const QDomNode& node,QString Space);
signals:

};

#endif // XMLFUN_H
