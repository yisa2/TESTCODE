#include "xmlfun.h"

#include <QFileDialog>
#include <QtDebug>
#include <QDomDocument>
#include <QXmlStreamReader>

XMLFun::XMLFun(QObject *parent) : QObject(parent)
{

}

void XMLFun::readXML(QString fileName)
{
    if(fileName.isEmpty())
        fileName = QFileDialog::getOpenFileName(NULL,("Open txt"),"c:/",("file (*.xml)"));

    QFile file(fileName);
    if (!file.open(QIODevice::ReadOnly| QIODevice::Text)) {
        qDebug() << "Failed to open XML file.";
        return;
    }
    QDomDocument dom;
    dom.setContent(&file);
    QDomElement root = dom.documentElement();
    // 调用递归函数开始遍历节点
    traverseNode(root,"    ");
    file.close();
}

void XMLFun::readXmlQXmlStreamReader(QString fileName)
{
    if(fileName.isEmpty())
        fileName = QFileDialog::getOpenFileName(NULL,("Open txt"),"c:/",("file (*.xml)"));

    QFile inputFile(fileName);
    if (!inputFile.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Cannot open input file for reading:" << inputFile.errorString();
        return;
    }

    qDebug()<<fileName;

    QXmlStreamReader xmlReader(&inputFile);
    QString xmlContent;
    QTextStream textStream(&xmlContent);

    // Read XML content and write it to a QString
    while (!xmlReader.atEnd() && !xmlReader.hasError()) {
        xmlReader.readNext();
        textStream << xmlReader.tokenString() << " ";
        switch (xmlReader.tokenType()) {
        case QXmlStreamReader::StartElement:
            textStream << xmlReader.name().toString() << "\n";
            break;
        case QXmlStreamReader::EndElement:
            textStream << xmlReader.name().toString() << "\n";
            break;
        case QXmlStreamReader::Characters:
            if (!xmlReader.isWhitespace())
                textStream << xmlReader.text().toString() << "\n";
            break;
        default:
            break;
        }
    }

    if (xmlReader.hasError()) {
        qWarning() << "XML error:" << xmlReader.errorString();
        return;
    }

    inputFile.close();

    // Write the content to a text file
    QFile outputFile(fileName+".txt");
    if (!outputFile.open(QIODevice::WriteOnly | QIODevice::Text)) {
        qWarning() << "Cannot open output file for writing:" << outputFile.errorString();
        return;
    }

    QTextStream out(&outputFile);
    out << xmlContent;

    outputFile.close();
}

void XMLFun::traverseNode(const QDomNode &node,QString Space)
{
    QDomNode domNode = node.firstChild();
    QString Attributes;
    QString domNodetagName;
    while (!domNode.isNull()) {
        if (domNode.isElement()) {
            domNodetagName = domNode.toElement().tagName();
            if (domNode.hasAttributes())
            {
                QDomNamedNodeMap attributes = domNode.attributes();
                for (int i = 0; i < attributes.count(); ++i) {
                    QDomAttr attr = attributes.item(i).toAttr();
                    Attributes = Attributes+QString("%1=\"%2\"").arg(attr.name()).arg(attr.value());
                }
            }
            // 处理元素的文本内容
            QString elementText;
            QDomNodeList childNodes = domNode.childNodes();
            for (int i = 0; i < childNodes.count(); ++i) {
                if (childNodes.at(i).isText()) {
                    elementText += childNodes.at(i).nodeValue();
                }
            }

            qDebug() << Space + QString("<%1>%2</%3>")
                        .arg(domNodetagName+"   "+Attributes)
                        .arg(elementText)
                        .arg(domNodetagName);
        }

        if (domNode.hasChildNodes()) {
            traverseNode(domNode,Space+Space);
        }


        domNode = domNode.nextSibling();
    }


    // 2
    //    if (node.isElement()) {

    //        QDomElement element = node.toElement();
    //        QString tagName = element.tagName();
    //        qDebug() << "Element: " << tagName;

    //        // Process element attributes here if needed
    //        QDomNamedNodeMap attributes = element.attributes();
    //        for (int i = 0; i < attributes.count(); ++i) {
    //            QDomNode attribute = attributes.item(i);
    //            qDebug() << "Attribute: " << attribute.nodeName() << "=" << attribute.nodeValue();
    //        }

    //        // Iterate over child nodes
    //        QDomNodeList childNodes = element.childNodes();
    //        for (int i = 0; i < childNodes.count(); ++i) {
    //            traverseNode(childNodes.at(i),Space+Space);
    //        }
    //    }else if (node.isText()) {
    //        QString text = node.toText().data();
    //        qDebug() << "Text: " << text;
    //    }

}
