import QtQuick 2.0

Item {
    id: root
    property int itemCounter: 0
    anchors.fill: parent

    function decrementCounter() {
        itemCounter--;
    }

    function createItem(itemIcon) {
        if (itemCounter >= 9 * 3) {
            console.log("Cannot add more items", itemIcon)
            return;
        }

        var component = Qt.createComponent("TileDynamic.qml")
        var object = component.createObject(container)
        object.icon = itemIcon
        object.itemDestroy.connect(root.decrementCounter)
        itemCounter++;
    }

    Grid {
        id: container
        anchors.centerIn: parent
        columns: 9
        spacing: 5
    }
}
