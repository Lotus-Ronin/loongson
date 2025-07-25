QT       += core gui sql
QT       += core gui serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    logwidget.cpp \
    main.cpp \
    mainwindow.cpp \
    qcustomplot.cpp \
    signup.cpp

HEADERS += \
    logwidget.h \
    mainwindow.h \
    qcustomplot.h \
    signup.h

FORMS += \
    logwidget.ui \
    mainwindow.ui \
    signup.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


DISTFILES += \
    images/loginbackground.jpg \
    images/loginbackground.jpg \
    images/loginbackground.jpg

RESOURCES += \
    images.qrc
