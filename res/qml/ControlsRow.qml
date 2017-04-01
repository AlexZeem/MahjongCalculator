import QtQuick 2.0
import QtQuick.Controls 1.2

Item {
    property alias chiBtn: chi
    anchors.fill: parent

    Row {
        anchors.centerIn: parent

        Button {
            id: chi
            checkable: true
            text: "Chi"
        }

        Button {
            text: "Pon"
        }

        Button {
            text: "Kan"
        }

        Button {
            text: "Closed Kan"
        }
    }
}
