import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import QtQuick.Layouts 1.1

BBGroupBox {
    property alias   race_wnd: img.race_wnd
    ColumnLayout {
//        anchors.fill: parent
        spacing: 10

        RowLayout {
            //                anchors.left: parent.left
            spacing: 10
            BBLabel {
                text: "Difficulty Level"
            }

            BBComboBox {
                id: combo
                model: ListModel {
                    id: cbItems
                    ListElement {
                        text: "Medium"
                    }
                    ListElement {
                        text: "Hard"
                    }
                }
            }

            BBLabel {
                text: "Number of Computer Players"
            }

            BBSpinBox {
                id: players
                value: 2
                maximumValue: 4
            }
        }

        RowLayout {
            BBFrameImage {
                id: img
//                MouseArea {
//                    anchors.fill: parent
//                    onClicked: {
//                        handlerLoader("RaceSelectionScreen.qml")
//                    }
//                }
            }
            Repeater {
                model: players.value - 1
                BBFrameImage {
                    race_wnd: img.race_wnd
//                    MouseArea {
//                        anchors.fill: parent
//                        onClicked: {
//                            handlerLoader("RaceSelectionScreen.qml")
//                        }
//                    }
                }
            }
        }
    }
}
