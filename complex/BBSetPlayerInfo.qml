import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import QtQuick.Layouts 1.1

BBGroupBox {
    property alias   race_wnd: img.race_wnd
    RowLayout {
        anchors.fill: parent
        ColumnLayout {
            Layout.fillWidth: true
//            Layout.fillHeight: true
            id: col2
            spacing: 5

            BBLabel {
                id: label1
                text: "Player Race Information"
                //            horizontalAlignment: Text.AlignHCenter
                //            width: parent.width
            }
            BBGroupBox {
                Layout.fillWidth: true
                ColumnLayout {
                    anchors.fill: parent
                    spacing: 5
//                    Rectangle{
//                        Layout.fillWidth: true
//                        color:"red"
//                        height: 100
//                    }

                    BBTextboxWithLabel {
                        Layout.fillWidth: true
                        id: emperor
                        width: parent.width
                        label.text: "Emperor Name"
                        textbox.text: "Me"
                    }
                    BBTextboxWithLabel {
                        Layout.fillWidth: true
                        id: homeworld
                        width: parent.width
                        label.text: "Homeworld Name"
                        textbox.text: "x"
                    }
                }
            }
        }
//        Connections {
//            target: img
//            onClicked: BBRaceSelection
//        }

        BBFrameImageTextH {
            race_wnd: race_wnd
            id:img
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: "A random race will be chosen."
                  + " If the Emperor and/or Homeworld name fields are left blank, "
                  + "default race names for those will be used."
//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.debug("=======")
//                    handlerLoader("RaceSelectionScreen.qml")
//                }
//            }
        }
    }
}
