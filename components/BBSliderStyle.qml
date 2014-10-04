import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "."

SliderStyle {
//    padding {
//        top: BBStyle.framePadding.top
//        left: BBStyle.framePadding.left
//        right: BBStyle.framePadding.right
//        bottom: BBStyle.framePadding.bottom
//    }
    groove: Rectangle {
        implicitWidth: 100
        implicitHeight: 8
        color: "gray"
        radius: 8
    }
    handle: Rectangle {
        anchors.centerIn: parent
        color: control.pressed ? "white" : "lightgray"
        border.color: "gray"
        border.width: 2
        implicitWidth: 24
        implicitHeight: 24
        radius: 8
    }}
