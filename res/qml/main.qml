import QtQuick 2.3
import QtQuick.Controls 1.2

Item {
    id: root
    anchors.fill: parent

    Constants { id: constants }

    //combination placeholder
    Rectangle {
        id: combo
        anchors {
            top: root.top
            left: root.left
            right: root.right
        }

        color: "steelblue"
        height: constants.tileHeight * 2
    }

    //button row placeholder
    Row {
        id: btns
        anchors {
            top: combo.bottom
            left: root.left
            right: root.right
        }

        Button {
            id: chiBtn
            text: "Chi"
        }
        Button {
            id: ponBtn
            text: "Pon"
        }
        Button {
            id: kanBtn
            text: "Kan"
        }
        Button {
            id: kanClosedBtn
            text: "Closed Kan"
        }
    }

    //tiles placeholder
    Rectangle {
        id: tiles
        anchors {
            top: btns.bottom
            left: root.left
            right: root.right
        }

        color: "steelblue"
        height: constants.tileHeight * 4
    }
}

