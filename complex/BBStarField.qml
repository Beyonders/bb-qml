import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import bbcontrols 1.0

Rectangle {
    color: "black"

    Image {
        anchors.fill: parent
        source: "../images/finalfrontier.png"
    }
    BBStarSelector {
        id: sel
    }

    Repeater {
        model: [[1, 342, 0, "yellow"], [711, 422, 500, "white"], [21, 442, 1000, "lightblue"], [111, 62, 1500, "lightgreen"], [331, 332, 2000, "blue"], [331, 222, 2500, "orange"], [541, 273, 3000, "gray"], [765, 92, 3500, "red"], [431, 2, 4000, "green"], [415, 317, 4500, "green"]]
        Item {
            BBStar {
                id: sprite
                x: modelData[0]
                y: modelData[1]
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        sel.x = sprite.x
                        sel.y = sprite.y
                    }
                }
            }

            ColorOverlay {
                anchors.fill: sprite
                source: sprite
                color: modelData[3]
            }
        }
    }
    BBWindow {
        anchors {
            right: parent.right
        }
        BBStarControl {
            anchors.fill: parent
        }
    }
}
