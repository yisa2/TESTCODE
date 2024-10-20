/****************************************************************************
** Meta object code from reading C++ file 'testfrm.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.10)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../testModbus/testfrm.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'testfrm.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.10. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_testFrm_t {
    QByteArrayData data[13];
    char stringdata0[125];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_testFrm_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_testFrm_t qt_meta_stringdata_testFrm = {
    {
QT_MOC_LITERAL(0, 0, 7), // "testFrm"
QT_MOC_LITERAL(1, 8, 13), // "signalConnect"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 2), // "IP"
QT_MOC_LITERAL(4, 26, 4), // "port"
QT_MOC_LITERAL(5, 31, 16), // "signalWriteValue"
QT_MOC_LITERAL(6, 48, 13), // "nStartAddress"
QT_MOC_LITERAL(7, 62, 6), // "uValue"
QT_MOC_LITERAL(8, 69, 4), // "type"
QT_MOC_LITERAL(9, 74, 15), // "signalSendState"
QT_MOC_LITERAL(10, 90, 5), // "state"
QT_MOC_LITERAL(11, 96, 16), // "slotStateChanged"
QT_MOC_LITERAL(12, 113, 11) // "dealTimeout"

    },
    "testFrm\0signalConnect\0\0IP\0port\0"
    "signalWriteValue\0nStartAddress\0uValue\0"
    "type\0signalSendState\0state\0slotStateChanged\0"
    "dealTimeout"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_testFrm[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    2,   39,    2, 0x06 /* Public */,
       5,    3,   44,    2, 0x06 /* Public */,
       9,    1,   51,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      11,    1,   54,    2, 0x0a /* Public */,
      12,    0,   57,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::Int,    3,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int,    6,    7,    8,
    QMetaType::Void, QMetaType::Bool,   10,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,   10,
    QMetaType::Void,

       0        // eod
};

void testFrm::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<testFrm *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->signalConnect((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 1: _t->signalWriteValue((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 2: _t->signalSendState((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->slotStateChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->dealTimeout(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (testFrm::*)(QString , int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&testFrm::signalConnect)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (testFrm::*)(int , int , int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&testFrm::signalWriteValue)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (testFrm::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&testFrm::signalSendState)) {
                *result = 2;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject testFrm::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_testFrm.data,
    qt_meta_data_testFrm,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *testFrm::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *testFrm::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_testFrm.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int testFrm::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void testFrm::signalConnect(QString _t1, int _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void testFrm::signalWriteValue(int _t1, int _t2, int _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void testFrm::signalSendState(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
