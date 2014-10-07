import QtQuick 2.0
import "."

BBGroupBox{
    id: gb
    implicitWidth: img.implicitWidth+left.implicitWidth+right.implicitWidth
    implicitHeight: img.implicitHeight
    Image {
        id: img
        anchors.centerIn: parent
        source: "../images/random.png"
    }
    BBImageButton {
        id: left
        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
        }

        source: "../images/arrow-left.png"
    }
    BBImageButton {
        id: right
        anchors {
            right: parent.right
            verticalCenter: parent.verticalCenter
        }

        source: "../images/arrow-right.png"
    }
}
