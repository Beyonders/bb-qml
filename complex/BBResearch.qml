import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../components"

//BBScreen {
    ColumnLayout {
            id: research
        spacing: 2
//        anchors{
//            fill: parent
//        }
        property variant categories: ["Computers", "Construction", "Force Fields", "Planetology", "Propulsion", "Weapons"]

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

            GridLayout {
                id: grid
                columns: 4

                anchors {
//                    top: parent.top
                    left: parent.left
                    right: parent.right
//                    margins: 20
                }
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
                    BBSlider {
                        Layout.column: 3
                        Layout.row: index
//                        Layout.alignment: Qt.AlignTop
//                        width: research.width * 0.2
                        implicitWidth: research.width * 0.2
                    }
                }
                Repeater {
                    model: categories
                    BBImageButton {
                        source: "../images/lock.png"
                        Layout.column: 4
                        Layout.row: index
                        checkable:true
                    }
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
                text: "Robotic Controls\nBattle Scanner"
            }
        }
    }
//}
