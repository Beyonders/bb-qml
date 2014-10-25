import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import bbcontrols 1.0


BBWindow {
    property variant categories: ["Computers", "Construction", "Force Fields", "Planetology", "Propulsion", "Weapons"]
ColumnLayout {
    id: research
    spacing: 2
    //        anchors{
    //            fill: parent
    //        }

    BBGroupBox {
        id: _points
        Layout.fillHeight: false
        Layout.fillWidth: true
        //            anchors {
        //                top: parent.top
        //                left: parent.left
        //                right: parent.right
        //            }
        //            height: parent.height / 2
        //            Rectangle{
        //                color: "blue"
        //            }
        ColumnLayout {
            anchors {
                //                    top: parent.top
                left: parent.left
                right: parent.right
                //                    margins: 20
            }
            GridLayout {
                id: grid
                columns: 4

                Repeater {
                    model: categories
                    BBLabel {
                        text: modelData + ":"
                        Layout.alignment: Qt.AlignRight
                        Layout.column: 0
                        Layout.row: index
                    }
                }
                Repeater {
                    model: categories
                    BBLabel {
                        text: "None"
                        Layout.fillWidth: true
                        Layout.column: 1
                        Layout.row: index
                    }
                }
                Repeater {
                    model: categories
                    BBLabel {
                        text: "N/A"
                        //                    Layout.fillWidth: true
                        Layout.column: 2
                        Layout.row: index
                        //                        Layout.alignment: Qt.AlignBottom
                    }
                }
                Repeater {
                    model: categories
                    BBSliderWithLock {
                        Layout.column: 3
                        Layout.row: index
                        Layout.fillWidth: false
                    }
                }
            }
            BBLabel {
                text: "Total Research Points:   28"
//                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight
            }
        }
    }
    RowLayout {
        id: _toolbar
        spacing: 2
        Layout.fillHeight: false
        Layout.fillWidth: true
        //            anchors {
        //                top: _points.bottom
        //                left: parent.left
        //                right: parent.right
        //            }
        ExclusiveGroup {
            id: excl
        }
        Repeater {
            model: categories
            BBFrameButton {
                Layout.fillWidth: true
                text: modelData
                checkable: true
                exclusiveGroup: excl
                checked: index === 0
            }
        }
    }
    BBGroupBox {
        id: _text
        Layout.fillHeight: true
        Layout.fillWidth: true
        //            anchors {
        //                top: _toolbar.bottom
        //                bottom: parent.bottom
        //                left: parent.left
        //                right: parent.right
        //            }
        BBLabel {
            //                anchors {
            //                    fill: parent
            //                    margins: 20
            //                }
            text: "Robotic Controls\nBattle Scanner\n\n\n\n\n"
        }
    }
}
}
