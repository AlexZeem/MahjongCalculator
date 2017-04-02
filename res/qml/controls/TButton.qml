import QtQuick 2.0
import QtQuick.Controls 1.2

Button {
    id: root
    property alias icon: icon.source
    signal selected(string icon)

    Image {
        id: icon
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    TOverlay { id: pressedOverlay; color: "gray" }
    TOverlay { id: enabledOverlay; color: "white" }

    onEnabledChanged: {
        enabledOverlay.visible = !enabled
    }

    onPressedChanged:  {
        pressedOverlay.visible = pressed
    }

    onClicked: {
        root.selected(icon.source)
    }
}
