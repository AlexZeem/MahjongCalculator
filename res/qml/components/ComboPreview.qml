import QtQuick 2.0

Item {
    id: root
    property int itemCounter: 0
    anchors.fill: parent

    function createItem(itemIcon) {
        if (itemCounter >= 9 * 3) {
            console.log("Cannot add more items", itemIcon)
            return;
        }

        var component = Qt.createComponent("TileDynamic.qml")
        var object = component.createObject(itemCounter < 9 ? buttonRow1 : itemCounter < 18 ? buttonRow2 : buttonRow3)
        object.icon = itemIcon
        itemCounter++;
    }

    Column {
        anchors.centerIn: parent
        spacing: 5

        Row {
            id: buttonRow1
            spacing: 5
        }

        Row {
            id: buttonRow2
            spacing: 5
        }

        Row {
            id: buttonRow3
            spacing: 5
        }
    }
}
