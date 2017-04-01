import QtQuick 2.0

Item {
    anchors.fill: parent

    Column {
        id: suits
        anchors {
            top: parent.top
            topMargin: 5
            horizontalCenter: parent.horizontalCenter
        }
        spacing: 5

        Row {
            spacing: 5
            Repeater {
                model: 9

                TButton {
                    height: constants.tileHeight
                    width: constants.tileWidth
                    icon: "qrc:/res/icons/tiles/s" + (index + 1) + ".png"
                }
            }
        }

        Row {
            spacing: 5
            Repeater {
                model: 9

                TButton {
                    height: constants.tileHeight
                    width: constants.tileWidth
                    icon: "qrc:/res/icons/tiles/d" + (index + 1) + ".png"
                }
            }
        }

        Row {
            spacing: 5
            Repeater {
                model: 9

                TButton {
                    height: constants.tileHeight
                    width: constants.tileWidth
                    icon: "qrc:/res/icons/tiles/b" + (index + 1) + ".png"
                }
            }
        }
    }

    Row {
        id: nobles
        anchors {
            top: suits.bottom
            topMargin: 5
            horizontalCenter: suits.horizontalCenter
        }
        spacing: 5

        TButton {
            height: constants.tileHeight
            width: constants.tileWidth
            icon: "qrc:/res/icons/tiles/e.png"
        }

        TButton {
            height: constants.tileHeight
            width: constants.tileWidth
            icon: "qrc:/res/icons/tiles/s.png"
        }

        TButton {
            height: constants.tileHeight
            width: constants.tileWidth
            icon: "qrc:/res/icons/tiles/w.png"
        }

        TButton {
            height: constants.tileHeight
            width: constants.tileWidth
            icon: "qrc:/res/icons/tiles/n.png"
        }

        TButton {
            height: constants.tileHeight
            width: constants.tileWidth
            icon: "qrc:/res/icons/tiles/dw.png"
        }

        TButton {
            height: constants.tileHeight
            width: constants.tileWidth
            icon: "qrc:/res/icons/tiles/dg.png"
        }

        TButton {
            height: constants.tileHeight
            width: constants.tileWidth
            icon: "qrc:/res/icons/tiles/dr.png"
        }
    }

    Row {
        anchors {
            top: nobles.bottom
            topMargin: 5
            horizontalCenter: nobles.horizontalCenter
        }
        spacing: 5

        Repeater {
            model: 4

            TButton {
                height: constants.tileHeight
                width: constants.tileWidth
                icon: "qrc:/res/icons/tiles/ss" + (index + 1) + ".png"
            }
        }

        Repeater {
            model: 4

            TButton {
                height: constants.tileHeight
                width: constants.tileWidth
                icon: "qrc:/res/icons/tiles/ff" + (index + 1) + ".png"
            }
        }
    }
}
