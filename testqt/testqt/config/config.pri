

contains(QT_ARCH, i386) {
    CONFIG(debug, debug|release) {
        DESTDIR = ../../build/32/MyDebug # 指定生成的应用程序放置的目录
        message($$DESTDIR)
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


