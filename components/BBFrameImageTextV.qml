import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

BBFrame{
    property alias source: img.source
    property alias text: area.text
    property int margin: 11

    implicitWidth: img.implicitWidth + 2*margin
    implicitHeight: img.implicitHeight+2*margin+200
    Column{
        spacing: 5
        anchors.fill: parent
        anchors.margins: margin
        Image {
            id: img
            anchors.horizontalCenter: parent.horizontalCenter
        }
        BBLabel{
            id: area
            wrapMode: Text.WordWrap
            anchors.horizontalCenter: parent.horizontalCenter
            width: img.width
            height: parent.height-img.height
        }
    }
}

