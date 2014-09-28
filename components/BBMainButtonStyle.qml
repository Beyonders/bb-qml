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
        property bool down: control.pressed
        implicitWidth: img.width
        implicitHeight: img.height
        Image {
            id: img
            source: control.pressed ? "../images/MainButtonFG.png" : "../images/MainButtonBG.png"
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
        BBLabel {
            id: _label
            anchors.centerIn: parent
            text: control.text
        }
    }
}
