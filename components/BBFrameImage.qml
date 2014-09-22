import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

BBFrame{
    property alias source: img.source
    property int margin: 11
//        anchors.fill: parent
    implicitHeight: img.implicitHeight + 2*margin
    implicitWidth: img.implicitWidth+2*margin
    Image {
        id: img
        anchors.centerIn: parent
    }
}

