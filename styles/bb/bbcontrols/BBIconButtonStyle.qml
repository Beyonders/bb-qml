import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

ButtonStyle {
//    padding {
//        top: BBStyle.framePadding.top
//        left: BBStyle.framePadding.left
//        right: BBStyle.framePadding.right
//        bottom: BBStyle.framePadding.bottom
//    }
    background: Item {
        property bool down: control.pressed || (control.checkable && control.checked)
        implicitWidth: img.width
        implicitHeight: img.height

        Image {
            id: img
            source: control.source
            scale: control.pressed ? 0.9 : 1.0
        }
        Image {
            source: control.source_pressed
            scale: 0.9

            opacity: down ? 1 : 0
            Behavior on opacity {
//                NumberAnimation {
//                    duration: 200
//                }
            }
        }
        BBFocusRectangle{
            anchors.fill: parent
            item: control
        }
    }
    label: Item {
        implicitWidth:0
        implicitHeight:0
//        implicitWidth: _label.implicitWidth + BBStyle.framePadding.left + BBStyle.framePadding.right
//        implicitHeight: _label.implicitHeight + BBStyle.framePadding.top
//                        + BBStyle.framePadding.bottom
//        BBLabel {
//            id: _label
//            anchors.centerIn: parent
//            text: control.text
//        }
    }
}
