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
    groove: Column {
        id: col
        //        height: 100
        Rectangle {
            implicitWidth: 100
            implicitHeight: 2
            color: "#b8bfbb"
            width: parent.width
            BBDisabledRectangle {
                anchors.fill: parent
                source: parent
            }
        }
        Rectangle {
            implicitWidth: 100
            implicitHeight: 4
            color: "#94a099"
            width: parent.width
            BBDisabledRectangle {
                anchors.fill: parent
                source: parent
            }
        }
        Rectangle {
            implicitWidth: 100
            implicitHeight: 2
            color: "#687c70"
            width: parent.width
//            z:-1
            BBDisabledRectangle {
                anchors.fill: parent
                source: parent
            }
        }
    }

    handle: BBArrowButton {
        direction: "right"
    }

    //    Rectangle {
    //        anchors.centerIn: parent
    //        color: control.pressed ? "white" : "lightgray"
    //        border.color: "gray"
    //        border.width: 2
    //        implicitWidth: 24
    //        implicitHeight: 24
    //        radius: 8
    //    }
}
