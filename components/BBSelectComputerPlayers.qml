import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

BBFrame{
    implicitHeight: img.implicitHeight+combo.implicitHeight+40
    Column
    {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 10

        Row{
                anchors.left: parent.left
                spacing: 10
                BBLabel{
                    text:"Difficulty Level"
                }

                BBComboBox{
                    id: combo
                    model: ListModel {
                        id: cbItems
                        ListElement { text: "Medium" }
                        ListElement { text: "Hard" }
                    }

                }

                BBLabel{
                    text:"Number of Computer Players"
                }

                BBSpinBox{
                    id: players
                    value: 2
                    maximumValue: 4
                }
        }

        Row {
            BBFrameImage{
                id: img
                            source: "../images/random.png"
            }
            Repeater {
                model: players.value-1
                BBFrameImage{
                                source: "../images/random.png"
                }
            }
        }
    }
}