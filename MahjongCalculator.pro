*g++*:QMAKE_CXXFLAGS += -std=c++11

TEMPLATE = app

QT += qml quick widgets core

PROJECT_ROOT_DIR = ./

BUILD_DIR   = $${PROJECT_ROOT_DIR}/bld
OBJECTS_DIR = $${BUILD_DIR}/obj
MOC_DIR     = $${BUILD_DIR}/moc
DESTDIR     = $${BUILD_DIR}/bin
RCC_DIR     = $${BUILD_DIR}/rcc

HEADERS += \
    $$PWD/src/tiles/*.h \
    #$$PWD/src/*.h

SOURCES += \
    $$PWD/src/tiles/*.cpp \
    $$PWD/src/*.cpp

QML_FILES += \
    $$PWD/res/qml/components/*.qml \
    $$PWD/res/qml/controls/*.qml \
    $$PWD/res/qml/*.qml

JS_FILES += \

DISTFILES += \
   $$QML_FILES \
   $$JS_FILES

RESOURCES += \
    icons.qrc

# Default rules for deployment.
include(deployment.pri)
