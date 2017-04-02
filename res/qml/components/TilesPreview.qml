import QtQuick 2.0

Item {
    id: root
    property alias noblesEnabled: nobles.enabled
    property alias seasonsFlowersEnabled: seasonsFlowers.enabled
    signal selected(string icon)

    anchors.fill: parent

    Column {
        id: suits
        anchors {
            top: parent.top
            topMargin: 5
            horizontalCenter: parent.horizontalCenter
        }
        spacing: 5

        Row {
            spacing: 5
            Repeater {
                model: 9

                TileBase {
                    icon: "qrc:/res/icons/tiles/s" + (index + 1) + ".png"
                    Component.onCompleted: selected.connect(root.selected)
                }
            }
        }

        Row {
            spacing: 5
            Repeater {
                model: 9

                TileBase {
                    icon: "qrc:/res/icons/tiles/d" + (index + 1) + ".png"
                    Component.onCompleted: selected.connect(root.selected)
                }
            }
        }

        Row {
            spacing: 5
            Repeater {
                model: 9

                TileBase {
                    icon: "qrc:/res/icons/tiles/b" + (index + 1) + ".png"
                    Component.onCompleted: selected.connect(root.selected)
                }
            }
        }
    }

    Row {
        id: nobles
        anchors {
            top: suits.bottom
            topMargin: 5
            horizontalCenter: suits.horizontalCenter
        }
        spacing: 5

        TileBase {
            icon: "qrc:/res/icons/tiles/e.png"
            Component.onCompleted: selected.connect(root.selected)
        }

        TileBase {
            icon: "qrc:/res/icons/tiles/s.png"
            Component.onCompleted: selected.connect(root.selected)
        }

        TileBase {
            icon: "qrc:/res/icons/tiles/w.png"
            Component.onCompleted: selected.connect(root.selected)
        }

        TileBase {
            icon: "qrc:/res/icons/tiles/n.png"
            Component.onCompleted: selected.connect(root.selected)
        }

        TileBase {
            icon: "qrc:/res/icons/tiles/dw.png"
            Component.onCompleted: selected.connect(root.selected)
        }

        TileBase {
            icon: "qrc:/res/icons/tiles/dg.png"
            Component.onCompleted: selected.connect(root.selected)
        }

        TileBase {
            icon: "qrc:/res/icons/tiles/dr.png"
            Component.onCompleted: selected.connect(root.selected)
        }
    }

    Row {
        id: seasonsFlowers
        anchors {
            top: nobles.bottom
            topMargin: 5
            horizontalCenter: nobles.horizontalCenter
        }
        spacing: 5

        Repeater {
            model: 4

            TileBase {
                icon: "qrc:/res/icons/tiles/ss" + (index + 1) + ".png"
                Component.onCompleted: selected.connect(root.selected)
            }
        }

        Repeater {
            model: 4

            TileBase {
                icon: "qrc:/res/icons/tiles/ff" + (index + 1) + ".png"
                Component.onCompleted: selected.connect(root.selected)
            }
        }
    }
}
