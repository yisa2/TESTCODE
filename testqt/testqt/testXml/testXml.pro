QT       += core gui xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
contains(QT_ARCH, i386) {
    CONFIG(debug, debug|release) {
        DESTDIR = ../../build/32/MyDebug # 指定生成的应用程序放置的目录
    }
    else {
        DESTDIR = ../../build/32/MyRelease # 指定生成的应用程序放置的目录
    }
} else {
    CONFIG(debug, debug|release) {
        DESTDIR = ../../build/64/MyDebug # 指定生成的应用程序放置的目录
    }
    else {
        DESTDIR = ../../build/64/MyRelease # 指定生成的应用程序放置的目录
    }
}
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    widget.cpp \
    xmlfun.cpp

HEADERS += \
    widget.h \
    xmlfun.h

FORMS += \
    widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
