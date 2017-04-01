import QtQuick 2.3
import QtQuick.Controls 1.2

Item {
    id: root
    height: constants.tileHeight * 12
    width: constants.tileWidth * 12

    Constants { id: constants }

    Item {
        id: headerPlaceholder
        height: constants.tileHeight
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        TNark { color: "blue" }
        Header {}
    }

    Item {
        id: comboPlaceholder
        height: constants.tileHeight * 3 + 20
        anchors {
            top: headerPlaceholder.bottom
            left: parent.left
            right: parent.right
        }

        TNark { color: "blue" }
        ComboPreview {}
    }

    Item {
        id: buttonRowPlaceholder
        height: constants.tileHeight
        anchors {
            top: comboPlaceholder.bottom
            left: parent.left
            right: parent.right
        }

        TNark { color: "blue" }
        ControlsRow {}
    }

    Item {
        id: tilesPlaceholder
        height: constants.tileHeight * 4 + 25
        anchors {
            top: buttonRowPlaceholder.bottom
            left: parent.left
            right: parent.right
        }

        TNark { color: "blue" }
        TilesPreview {}
    }
}

