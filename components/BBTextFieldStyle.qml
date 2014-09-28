import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "."

TextFieldStyle {
    padding {
        top: BBStyle.framePadding.top
        left: BBStyle.framePadding.left
        right: BBStyle.framePadding.right
        bottom: BBStyle.framePadding.bottom
    }
    background: Item {
        implicitWidth:200
        //        implicitWidth: _textbox.implicitWidth + BBStyle.framePadding.left
        //                       + BBStyle.framePadding.right
        implicitHeight: control.__contentHeight + BBStyle.framePadding.top
                        + BBStyle.framePadding.bottom + 10
        Rectangle {
            anchors.fill: parent
            color: "brown"
        }
        BBFrame {
            anchors.fill: parent
        }
        BBFocusRectangle {
            anchors.fill: parent
            item: control
        }
    }
    textColor: "white"
    selectedTextColor: "black"
    selectionColor: "white"
    font {
        family: BBStyle.font.family
        pointSize: BBStyle.font.pointSize
    }
}
