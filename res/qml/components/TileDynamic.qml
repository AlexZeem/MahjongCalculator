import QtQuick 2.0
import QtQuick.Controls 1.2

TileBase {
    id: root

    onClicked: {
        root.destroy()
    }
}
