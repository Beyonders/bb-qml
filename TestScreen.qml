import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "components"

BBScreen {
    Row {
        anchors.fill: parent
        Column {
            spacing: 10
            BBComboBox {
                model: ListModel {
                    id: cbItems
                    ListElement {
                        text: "BBComboBox"
                    }
                    ListElement {
                        text: "one"
                    }
                    ListElement {
                        text: "two"
                    }
                    ListElement {
                        text: "three"
                    }
                }
            }
            BBTextField {
                text: "BBTextbox"
            }
            BBLabel {
                text: "BBLabel"
            }

            BBFrameButton {
                text: "x"
            }
            BBFrameButton {
                text: "BBFrameButton"
            }
            BBFrameButton {
                text: "BBFrameButtonBBFrameButton"
            }
            BBFrameButton {
                text: "BBFrameButton"
                width: 300
            }
            BBFrameButton {
                enabled: false
                text: "disabled"
            }

            BBMainButton {
                text: "BBMainButton"
            }
        }
        Column {
            spacing: 10
            BBComboBox {
                enabled: false
                model: ListModel {
                    ListElement {
                        text: "BBComboBox"
                    }
                    ListElement {
                        text: "one"
                    }
                    ListElement {
                        text: "two"
                    }
                    ListElement {
                        text: "three"
                    }
                }
            }
            BBTextField {
                enabled: false
                text: "BBTextbox"
            }
            BBLabel {
                enabled: false
                text: "BBLabel"
            }
            BBMainButton {
                enabled: false
                text: "BBMainButton"
            }
        }
    }
}
