import QtQuick 2.0

Item {
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 5

        Repeater {
            model: 3

            Row {
                spacing: 5

                Repeater {
                    model: 9

                    Rectangle {
                        height: constants.tileHeight
                        width: constants.tileWidth
                        TNark { color: "red" }
                    }
                }
            }
        }
    }
}
