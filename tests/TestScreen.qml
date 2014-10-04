import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "../components"

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
            BBFrameImage {
                id: img
                source: "../images/random.png"
            }
            BBLabel {
                text: "BBLabel"
            }
            BBFrameImageTextH {
                text: "BBFrameImageTextH"
                source: "../images/random.png"
            }
            BBFrameImageTextV {
                text: "BBFrameImageTextV"
                source: "../images/random.png"
            }
            BBMainButton {
                text: "BBMainButton"
            }
        }
    }
}
