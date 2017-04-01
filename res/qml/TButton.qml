import QtQuick 2.0
import QtQuick.Controls 1.2

Button {
    property alias icon: icon.source
    height: constants.tileHeight
    width: constants.tileWidth

    Image {
        id: icon
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    TNark { id: overlay; color: "gray" }

    onPressedChanged:  {
        overlay.visible = pressed
    }

    onClicked: {
        console.log("Button pressed")
    }
}
