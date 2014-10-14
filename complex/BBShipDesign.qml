import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../components"

RowLayout {
    spacing: 0
    ColumnLayout {
        spacing: 0
        Layout.fillWidth: true
        BBGroupBox {
            Layout.fillWidth: true
            Layout.fillHeight: true
            BBButtonsTextV {
                anchors.fill: parent
                text: "Galaxy Speed:1 Combat Speed:1"
                buttons: ["Retro Engines", "1 Maneuverability"]
            }
        }
        BBGroupBox {
            Layout.fillWidth: true
            Layout.fillHeight: true
            BBButtonsTextV {
                anchors.fill: parent
                text: "10 hit points \n Absorbs 0 damage \n 2 Missile Defense Rating"
                buttons: ["Titanium Rmor", "No Shield", "No ECM"]
            }
        }
        RowLayout {
            spacing: 0
            Layout.fillWidth: true
            Layout.fillHeight: true
//            BBFrameImage {
//                Layout.fillWidth: true
//                Layout.fillHeight: true
//                source: "../images/random.png"
//            }
            BBImageSelection{
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            ExclusiveGroup {
                id: excl
            }

            ColumnLayout {
                spacing: 0
                Repeater {
                    model: ["Small", "Medium", "Large", "Huge"]
                    BBFrameButton {
                        text: modelData
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        checkable: true
                        checked: index === 0
                        exclusiveGroup: excl
                    }
                }
            }
        }
    }
    ColumnLayout {
        spacing: 0
        Layout.fillWidth: true
        BBGroupBox {
            Layout.fillWidth: true
            Layout.fillHeight: true
            RowLayout {
                anchors.fill: parent
                BBFrameButton {
                    text: "No Computer"
                    Layout.fillWidth: true
                }
                BBLabel {
                    text: "   0 Attack rating"
                }
            }
        }
        BBGroupBox {
            Layout.fillWidth: true
            Layout.fillHeight: true
            GridLayout {
                anchors.fill: parent
                columns: 3
                Repeater {
                    model: 4
                    BBFrameButton {
                        text: "No Weapon"
                                                Layout.fillWidth: true
                        Layout.column: 0
                        Layout.row: index
                    }
                }
//                Repeater {
//                    model: 4
//                    Rectangle {
//                        width: 30
//                        color: "transparent"
////                        Layout.fillWidth: true
//                        Layout.column: 1
//                        Layout.row: index
//                        //                        Layout.alignment: Qt.AlignRight
//                    }
//                }
                Repeater {
                    model: 4
                    BBLabel {
                        text: "    Count:"
                        //                        Layout.fillWidth: true
                        Layout.column: 2
                        Layout.row: index
//                        Layout.alignment: Qt.AlignRight
                    }
                }
                Repeater {
                    model: 4
                    BBSpinBox {
                        //                        Layout.fillWidth: true
                        Layout.column: 3
                        Layout.row: index
                    }
                }
            }
        }
        BBGroupBox {
            Layout.fillWidth: true
            Layout.fillHeight: true
            ColumnLayout {
                anchors.fill: parent
                BBButtonsTextV {
                    buttons: ["Reserve Fuel Tanks"]
                    text: "Extends the range of ship"
                }
                BBButtonsTextV {
                    buttons: ["No Special"]
                }
                BBButtonsTextV {
                    buttons: ["No Special"]
                }
            }
        }
        BBGroupBox {
            Layout.fillWidth: true
            Layout.fillHeight: true
            RowLayout {
                anchors.fill: parent
                ColumnLayout {
                    BBTextField{
                        text: "Scout"
                    }
                    BBLabel
                    {
                    text: "Cost: 56 BCs"
                    Layout.fillWidth: true
//                    Layout.fillHeight: true
                    }
                }
                BBImageButton {
                    source: "../images/cancel.png"
                    Layout.fillWidth: false
                    Layout.fillHeight: false
                }
                BBImageButton {
                    source: "../images/ok.png"
                    Layout.fillWidth: false
                    Layout.fillHeight: false
                }
            }
        }
    }
}
