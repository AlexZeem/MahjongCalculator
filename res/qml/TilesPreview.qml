import QtQuick 2.0
import QtQuick.Controls 1.2

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

        Repeater {
            model: 3

            Row {
                spacing: 5
                Repeater {
                    model: 9

                    Button {
                        height: constants.tileHeight
                        width: constants.tileWidth
                        TNark { color: "green" }
                    }
                }
            }
        }
    }

    Row {
        anchors {
            top: suits.bottom
            topMargin: 5
            horizontalCenter: suits.horizontalCenter
        }
        spacing: 5

        Repeater {
            model: 7

            Button {
                height: constants.tileHeight
                width: constants.tileWidth
                TNark { color: "green" }
            }
        }
    }
}
