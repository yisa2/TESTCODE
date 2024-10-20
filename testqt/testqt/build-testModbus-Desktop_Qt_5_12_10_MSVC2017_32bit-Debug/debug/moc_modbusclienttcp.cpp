/****************************************************************************
** Meta object code from reading C++ file 'modbusclienttcp.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.10)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../testModbus/modbusclienttcp.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QVector>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'modbusclienttcp.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.10. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ModbusClientTcp_t {
    QByteArrayData data[33];
    char stringdata0[460];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ModbusClientTcp_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ModbusClientTcp_t qt_meta_stringdata_ModbusClientTcp = {
    {
QT_MOC_LITERAL(0, 0, 15), // "ModbusClientTcp"
QT_MOC_LITERAL(1, 16, 11), // "sendMessage"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 16), // "QVector<quint16>"
QT_MOC_LITERAL(4, 46, 5), // "value"
QT_MOC_LITERAL(5, 52, 19), // "signalConnectDevice"
QT_MOC_LITERAL(6, 72, 22), // "signalReadRegisterData"
QT_MOC_LITERAL(7, 95, 23), // "signalWriteRegisterData"
QT_MOC_LITERAL(8, 119, 12), // "workFinished"
QT_MOC_LITERAL(9, 132, 18), // "signalStateChanged"
QT_MOC_LITERAL(10, 151, 5), // "state"
QT_MOC_LITERAL(11, 157, 11), // "sendReadMsg"
QT_MOC_LITERAL(12, 169, 7), // "readmsg"
QT_MOC_LITERAL(13, 177, 12), // "sendErrorMsg"
QT_MOC_LITERAL(14, 190, 7), // "connect"
QT_MOC_LITERAL(15, 198, 5), // "strIp"
QT_MOC_LITERAL(16, 204, 5), // "nPort"
QT_MOC_LITERAL(17, 210, 17), // "slotErrorOccurred"
QT_MOC_LITERAL(18, 228, 20), // "QModbusDevice::Error"
QT_MOC_LITERAL(19, 249, 5), // "error"
QT_MOC_LITERAL(20, 255, 16), // "slotStateChanged"
QT_MOC_LITERAL(21, 272, 20), // "QModbusDevice::State"
QT_MOC_LITERAL(22, 293, 17), // "slotConnectDevice"
QT_MOC_LITERAL(23, 311, 13), // "slotReadyRead"
QT_MOC_LITERAL(24, 325, 14), // "slotReadyWrite"
QT_MOC_LITERAL(25, 340, 20), // "slotReadRegisterData"
QT_MOC_LITERAL(26, 361, 13), // "nStartAddress"
QT_MOC_LITERAL(27, 375, 4), // "nNum"
QT_MOC_LITERAL(28, 380, 4), // "type"
QT_MOC_LITERAL(29, 385, 24), // "slotReadRegisterDataSync"
QT_MOC_LITERAL(30, 410, 21), // "slotWriteRegisterData"
QT_MOC_LITERAL(31, 432, 6), // "uValue"
QT_MOC_LITERAL(32, 439, 20) // "slotDealWithTimerOut"

    },
    "ModbusClientTcp\0sendMessage\0\0"
    "QVector<quint16>\0value\0signalConnectDevice\0"
    "signalReadRegisterData\0signalWriteRegisterData\0"
    "workFinished\0signalStateChanged\0state\0"
    "sendReadMsg\0readmsg\0sendErrorMsg\0"
    "connect\0strIp\0nPort\0slotErrorOccurred\0"
    "QModbusDevice::Error\0error\0slotStateChanged\0"
    "QModbusDevice::State\0slotConnectDevice\0"
    "slotReadyRead\0slotReadyWrite\0"
    "slotReadRegisterData\0nStartAddress\0"
    "nNum\0type\0slotReadRegisterDataSync\0"
    "slotWriteRegisterData\0uValue\0"
    "slotDealWithTimerOut"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ModbusClientTcp[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      21,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       8,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,  119,    2, 0x06 /* Public */,
       5,    0,  122,    2, 0x06 /* Public */,
       6,    3,  123,    2, 0x06 /* Public */,
       7,    3,  130,    2, 0x06 /* Public */,
       8,    0,  137,    2, 0x06 /* Public */,
       9,    1,  138,    2, 0x06 /* Public */,
      11,    1,  141,    2, 0x06 /* Public */,
      13,    1,  144,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      14,    2,  147,    2, 0x0a /* Public */,
      17,    1,  152,    2, 0x0a /* Public */,
      20,    1,  155,    2, 0x0a /* Public */,
      22,    0,  158,    2, 0x0a /* Public */,
      23,    0,  159,    2, 0x0a /* Public */,
      24,    0,  160,    2, 0x0a /* Public */,
      25,    3,  161,    2, 0x0a /* Public */,
      25,    2,  168,    2, 0x2a /* Public | MethodCloned */,
      29,    3,  173,    2, 0x0a /* Public */,
      29,    2,  180,    2, 0x2a /* Public | MethodCloned */,
      30,    3,  185,    2, 0x0a /* Public */,
      30,    2,  192,    2, 0x2a /* Public | MethodCloned */,
      32,    0,  197,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int,    2,    2,    2,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int,    2,    2,    2,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   10,
    QMetaType::Void, QMetaType::QString,   12,
    QMetaType::Void, QMetaType::QString,   12,

 // slots: parameters
    QMetaType::Bool, QMetaType::QString, QMetaType::Int,   15,   16,
    QMetaType::Void, 0x80000000 | 18,   19,
    QMetaType::Void, 0x80000000 | 21,   10,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int,   26,   27,   28,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   26,   27,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int,   26,   27,   28,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   26,   27,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int,   26,   31,   28,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   26,   31,
    QMetaType::Void,

       0        // eod
};

void ModbusClientTcp::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ModbusClientTcp *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->sendMessage((*reinterpret_cast< QVector<quint16>(*)>(_a[1]))); break;
        case 1: _t->signalConnectDevice(); break;
        case 2: _t->signalReadRegisterData((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 3: _t->signalWriteRegisterData((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 4: _t->workFinished(); break;
        case 5: _t->signalStateChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->sendReadMsg((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 7: _t->sendErrorMsg((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 8: { bool _r = _t->connect((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 9: _t->slotErrorOccurred((*reinterpret_cast< QModbusDevice::Error(*)>(_a[1]))); break;
        case 10: _t->slotStateChanged((*reinterpret_cast< QModbusDevice::State(*)>(_a[1]))); break;
        case 11: _t->slotConnectDevice(); break;
        case 12: _t->slotReadyRead(); break;
        case 13: _t->slotReadyWrite(); break;
        case 14: _t->slotReadRegisterData((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 15: _t->slotReadRegisterData((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 16: _t->slotReadRegisterDataSync((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 17: _t->slotReadRegisterDataSync((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 18: _t->slotWriteRegisterData((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 19: _t->slotWriteRegisterData((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 20: _t->slotDealWithTimerOut(); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QVector<quint16> >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (ModbusClientTcp::*)(QVector<quint16> );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::sendMessage)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (ModbusClientTcp::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::signalConnectDevice)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (ModbusClientTcp::*)(int , int , int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::signalReadRegisterData)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (ModbusClientTcp::*)(int , int , int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::signalWriteRegisterData)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (ModbusClientTcp::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::workFinished)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (ModbusClientTcp::*)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::signalStateChanged)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (ModbusClientTcp::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::sendReadMsg)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (ModbusClientTcp::*)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ModbusClientTcp::sendErrorMsg)) {
                *result = 7;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject ModbusClientTcp::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_ModbusClientTcp.data,
    qt_meta_data_ModbusClientTcp,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *ModbusClientTcp::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ModbusClientTcp::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ModbusClientTcp.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int ModbusClientTcp::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 21)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 21;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 21)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 21;
    }
    return _id;
}

// SIGNAL 0
void ModbusClientTcp::sendMessage(QVector<quint16> _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void ModbusClientTcp::signalConnectDevice()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void ModbusClientTcp::signalReadRegisterData(int _t1, int _t2, int _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void ModbusClientTcp::signalWriteRegisterData(int _t1, int _t2, int _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void ModbusClientTcp::workFinished()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void ModbusClientTcp::signalStateChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void ModbusClientTcp::sendReadMsg(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void ModbusClientTcp::sendErrorMsg(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
