QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE        = lib
CONFIG         += plugin
TARGET          = qtplugin

EXAMPLE_FILES = qtplugin.json

include($$PWD/../config/config.pri)

HEADERS += \
    $$PWD/plugfrm.h \
    plugintfrm.h

SOURCES += \
    plugfrm.cpp \
    plugintfrm.cpp
