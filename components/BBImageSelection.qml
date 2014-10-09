import QtQuick 2.0
import "."

BBGroupBox{
    id: gb
    implicitWidth: img.implicitWidth+left.implicitWidth+right.implicitWidth+60
    implicitHeight: img.implicitHeight+20
    Image {
        id: img
        anchors.centerIn: parent
        source: "../images/random.png"
    }
    BBArrowButton {
        id: left
        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
        }

        direction: "left"
    }
    BBArrowButton {
        id: right
        anchors {
            right: parent.right
            verticalCenter: parent.verticalCenter
        }

        direction: "right"
    }
}
