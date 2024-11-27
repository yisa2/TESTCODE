#ifndef SQLITECLASS_H
#define SQLITECLASS_H

#include <QObject>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlRecord>
#include <iostream>
#include <QStringList>

class SqliteClass : public QObject
{
    Q_OBJECT
public:
    explicit SqliteClass(QObject *parent = nullptr);
    bool OpenDB();
    void CloseDB();
    void InitTable(QString tableName);
    bool IsExistTable(QString tableName);
    void transaction();
    void commit();


    void testRead();
    void testUpdate();

    QString m_log;

signals:


private:
    QSqlDatabase db;
};

#endif // SQLITECLASS_H
