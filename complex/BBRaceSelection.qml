import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import bbcontrols 1.0
import "."

BBWindow {
    id: root
    property string selected: "random"
    property var caller
    RowLayout {
        ExclusiveGroup {
            id: excl
        }
        spacing: 0
        anchors.fill: visible ? parent : undefined
        ColumnLayout {
            //                        width:500
            //                        Layout.fillWidth: false
            Layout.alignment: Qt.AlignTop
            spacing: 0

            Repeater {
                model: ["random", "human", "hamster", "zero"]
                BBFrameButton {
                    text: modelData
                    Layout.fillWidth: true
                    checkable: true
                    exclusiveGroup: excl
                    checked: text==selected
                    onClicked: {
                        selected=text
                    }
                }
            }
        }
        ColumnLayout {
            //            Layout.fillWidth: false
            spacing: 0
            //            height: parent.height
            BBFrameImageTextV {
                id: race_info
                //                height: parent.height-parent.spacing-btn.height
                Layout.fillHeight: true
                Layout.fillWidth: true
                source: "../images/"+selected+".png"
                text: "A random race will be chosen."
                      + " If the Emperor and/or Homeworld name fields are left blank, "
                      + "default race names for those will be used."
            }
            BBFrameButton {
                id: btn
                text: "Select Race"
                Layout.fillWidth: true
                //                width: race_info.width
                //                height: 50
                onClicked: {
                    root.visible = false
                    caller.selected=selected
                    //                    handlerLoader("NewGameScreen.qml")
                }
            }
        }
    }
}
