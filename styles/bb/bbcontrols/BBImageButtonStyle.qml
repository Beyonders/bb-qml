import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

BBIconButtonStyle {
    padding {
        top: BBStyle.framePadding.top
        left: BBStyle.framePadding.left
        right: BBStyle.framePadding.right
        bottom: BBStyle.framePadding.bottom
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
