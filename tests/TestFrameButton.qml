import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0

BBWindow {
    Column {
        anchors.fill: parent
        spacing: 10
        BBLabel {
            text: "BBFrameButton vs Button"
        }
        Row {
            BBFrameButton {
                text: "x"
            }
            Button {
                text: "x"
            }
        }
        Row {
            BBFrameButton {
                text: "normal"
            }
            Button {
                text: "normal"
            }
        }
        Row {
            BBFrameButton {
                text: "long text long text"
            }
            Button {
                text: "long text long text"
            }
        }
        Row {
            BBFrameButton {
                text: "width=300"
                width: 300
            }
            Button {
                text: "width=300"
                width: 300
            }
        }
        Row {
            BBFrameButton {
                enabled: false
                text: "disabled"
            }
            Button {
                enabled: false
                text: "disabled"
            }
        }
        Row {
            BBFrameButton {
                checkable: true
                text: "checkable 0"
            }
            Button {
                checkable: true
                text: "checkable 0"
            }
        }
        Row {
            BBFrameButton {
                checkable: true
                checked: true
                text: "checkable 1"
            }
            Button {
                checkable: true
                checked: true
                text: "checkable 1"
            }
        }
        Row {
            BBFrameButton {
                text: "parent.width"
                width: parent.width
            }
            Button {
                text: "parent.width"
                width: parent.width
            }
        }
    }

}
