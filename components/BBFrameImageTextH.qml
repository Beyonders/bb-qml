import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

BBFrame{
    property alias source: img.source
    property alias text: area.text
    property int margin: 11

    implicitHeight: img.implicitHeight + 2*margin
    implicitWidth: img.implicitWidth+2*margin+200
    Row{
        spacing: 5
        anchors.fill: parent
        anchors.margins: margin
        Image {
            id: img
            anchors.verticalCenter: parent.verticalCenter
        }
        BBLabel{
            id: area
            wrapMode: Text.WordWrap
            anchors.verticalCenter: parent.verticalCenter
            height: img.height
            width: parent.width-img.width
        }
    }
}

