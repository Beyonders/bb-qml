import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import bbcontrols 1.0

//BBWindow {
    ColumnLayout {
        id: x
        spacing: 10
//        anchors.fill: parent
        BBGroupBox {
            Layout.fillWidth: true
            color: "darkblue"
            BBLabel {
                text: "Sol"
            }
        }
        RowLayout {
            spacing: 20
            Image {
                source: "../images/planet1.png"
            }
            BBLabel {
                text: "Terran\n40/100\n 40 21 Industry"
            }
        }

        ColumnLayout {
            spacing: 0
            BBStarControlSlider {
                Layout.fillWidth: true
                text: "32/200 Factories"
                image: "../images/city.png"
            }
            BBStarControlSlider {
                Layout.fillWidth: true
                text: "Not Researching"
                image: "../images/flask.png"
            }
            BBStarControlSlider {
                Layout.fillWidth: true
                text: "Clean"
                image: "../images/tree.png"
            }
            BBStarControlSlider {
                Layout.fillWidth: true
                text: "0 Bases"
                image: "../images/gun.png"
            }
            BBStarControlSlider {
                Layout.fillWidth: true
                text: "Scout - No Activity"
                image: "../images/crane.png"
            }

            Rectangle {
                // eat free space
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
            }
        }
        RowLayout {
            spacing: 10
            Layout.alignment: Qt.AlignRight
            BBIconButton {
                source: "images/ship1.png"
                text:"ship"
            }
            BBIconButton {
                source: "images/soldiers1.png"
                text:"soldiers"
            }
        }
    }
//}
