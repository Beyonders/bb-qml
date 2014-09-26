import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import "components"
import QtQuick.Layouts 1.1

Rectangle {
    signal handlerLoader(string name)
    anchors.fill: parent
    RowLayout{
        spacing: 0
        anchors.fill: parent
        ColumnLayout {
            Layout.alignment: Qt.AlignTop
            spacing: 0
//            height: parent.height

            BBFrameButton{
                text: "Random"
                Layout.fillWidth: true
            }
            BBFrameButton{
                text: "Humans"
                Layout.fillWidth: true
            }
            BBFrameButton{
                text: "Zero"
                Layout.fillWidth: true
            }
        }
        ColumnLayout {
                            Layout.fillWidth: false
            spacing: 0
//            height: parent.height
            BBFrameImageTextV {
                id: race_info
//                height: parent.height-parent.spacing-btn.height
//                Layout.fillWidth: true
                Layout.fillHeight: true
                source: "./images/random.png"
                text: "A random race will be chosen."
                      + " If the Emperor and/or Homeworld name fields are left blank, "
                      + "default race names for those will be used."
            }
            BBFrameButton {
                id: btn
                text: "Select Race"
                width: race_info.width
//                height: 50
                onClicked: {
                    handlerLoader("NewGameScreen.qml");
                }
            }
        }
    }
}
