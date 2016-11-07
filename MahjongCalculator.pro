TEMPLATE = app

QT += qml quick widgets

SOURCES += \
    $$PWD/src/*.cpp

RESOURCES +=

QML_FILES = \
    $$PWD/res/qml/*.qml

DISTFILES += $$QML_FILES


# Default rules for deployment.
include(deployment.pri)
