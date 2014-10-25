import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

ButtonStyle {
    padding {
        top: BBStyle.framePadding.top
        left: BBStyle.framePadding.left
        right: BBStyle.framePadding.right
        bottom: BBStyle.framePadding.bottom
    }
    background: Item {
        property bool down: control.pressed || (control.checkable && control.checked)
        implicitWidth: 50
        scale: control.pressed ? 0.9 : 1.0

        Rectangle {
            id: baserect
            anchors.fill: parent
            color: down ? "blue" : "black"
        }
        BBFrame {
            id: _frame
            anchors.fill: parent
        }

        BBFocusRectangle {
            anchors.fill: parent
            item: control
        }
    }
    label: Item {
        implicitWidth: _label.implicitWidth + BBStyle.framePadding.left + BBStyle.framePadding.right
        implicitHeight: _label.implicitHeight + BBStyle.framePadding.top
                        + BBStyle.framePadding.bottom

        scale: control.pressed ? 0.9 : 1.0

        BBLabel {
            id: _label
            anchors.centerIn: parent
            text: control.text
            color: control.enabled ? 'white':'gray'
        }
    }
}
