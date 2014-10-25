import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import bbcontrols 1.0

BBGroupBox {
//    color: "blue"
    property alias source: img.source
    property alias text: area.text
    property int margin: 5

    implicitWidth: img.implicitWidth + 2 * margin
    implicitHeight: img.implicitHeight + 2 * margin + 200

    Column {
        spacing: 5
        anchors.fill: parent
//        anchors.margins: margin
//                    Layout.fillWidth: false
        Image {
            id: img
//            Layout.alignment: Qt.AlignCenter | Qt.AlignTop
            anchors.horizontalCenter: parent.horizontalCenter
//            Rectangle{
//                        anchors.fill: parent
//                color: "yellow"
////                z:-1
//            }
        }
        BBLabel {
            id: area
            wrapMode: Text.WordWrap
//            Layout.fillWidth: true
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: parent.height - img.height
//            Rectangle{
//                        anchors.fill: parent
//                color: "green"
//                z:-1
//            }
        }
    }
}
