#include "sqliteclass.h"
#include <QDebug>
#include <QApplication>
#include <QDir>
#include <QPluginLoader>
#include <QSqlError>
#include <QFileInfo>
#include <QString>
#include <QRegularExpression>

SqliteClass::SqliteClass(QObject *parent) : QObject(parent)
{
    QString path = QDir::currentPath();
    QString filePath = QString(__FILE__);
    QApplication::addLibraryPath(path+QString("/release/plugins"));
    QPluginLoader loader(path+QString("/release/plugins/sqldrivers/qsqlite.dll"));

    // 添加 SQLite 数据库驱动。
    db = QSqlDatabase::addDatabase("QSQLITE");
    // 设置数据库路径
    QString pathexe = QDir::cleanPath(QCoreApplication::applicationDirPath() + QDir::separator());
    db.setDatabaseName(pathexe + "\\testSqlite.db");
    if(!OpenDB()){
        qDebug()<<"打开失败";
    }
    else{
        qDebug()<<"打开成功";
        QString tablelistpath = QDir::currentPath()+"/SQL";
        qDebug()<<"tablelistpath : "<<tablelistpath;
        QDir dir(tablelistpath);
        dir.setFilter(QDir::Dirs | QDir::NoDotAndDotDot|QDir::Files | QDir::NoSymLinks);
        QFileInfoList list = dir.entryInfoList();
        int file_count = list.length();
        for(int i=0; i<file_count; i++){
            QFileInfo file_info = list.at(i);
            QString suffix = file_info.suffix();
            QString absolute_file_path = file_info.absoluteFilePath();
            QString file_path = file_info.fileName();
            QString basename = file_info.baseName();
            qDebug()<<"sql file : "<<basename;
            if(!IsExistTable(basename)){
                db.transaction();
                InitTable(basename);
                db.commit();
            }
        }
    }
}

bool SqliteClass::OpenDB()
{
    return db.open();
}

void SqliteClass::CloseDB()
{
    db.close();
}

void SqliteClass::InitTable(QString tableName)
{
    QString sql_file_path = QDir::currentPath()+"/SQL/"+tableName+".sql";
    QFile file(sql_file_path);
    if(file.open(QIODevice::ReadOnly| QIODevice::Text)){
        QTextStream toText(&file);
        toText.setCodec("UTF-8");
        QStringList cmds;
        QSqlQuery query;
        while(!toText.atEnd()){
            QString line;
            QString str = toText.readLine();
            if(str.left(2)!="--"){
                line += str;
            }
            while ((line.right(1)!=";")&&(!toText.atEnd())) {
                QString str = toText.readLine();
                if(str.left(2)!="--"){
                    line += str;
                }
            }
            QRegularExpression regex(R"(\/\*(?:(?!\*\/).)*?\*\/)");
            line.replace(regex, "");
            query.exec(line);
        }
        file.close();
    }
}

bool SqliteClass::IsExistTable(QString tableName)
{
    QSqlQuery query(QString("PRAGMA table_info('%1'); ").arg(tableName));
    query.exec();
    int ret=0;
    while(query.next()){
        ret++;
    }
    return ret;
}
void SqliteClass::transaction()
{
    db.transaction();
}
void SqliteClass::commit()
{
    db.commit();
}
