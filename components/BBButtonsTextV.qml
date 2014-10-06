import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

ColumnLayout {
    property alias text: area.text
    property alias buttons: rep.model
    spacing: 5
    Repeater {
        id: rep
        model: buttons
        BBFrameButton {
            text: modelData
            //                width: parent.width
            Layout.fillWidth: true
            Layout.fillHeight: false
        }
    }

    BBLabel {
        id: area
        wrapMode: Text.WordWrap
        Layout.fillWidth: true
        Layout.fillHeight: true
        //            anchors.horizontalCenter: parent.horizontalCenter
    }
}
