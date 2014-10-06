import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "../components"
import "../complex"

BBScreen {
    property ListModel demo_list: ListModel {
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
    Column {
        anchors.fill: parent
        spacing: 10
        BBComboBox {
            model: demo_list
        }
        BBTextField {
            text: "BBTextbox"
        }
        BBTextField {
            text: "BBTextbox parent.width"
            width: parent.width
        }
        BBFrameImage {
            id: img
            source: "../images/random.png"
        }
        BBLabel {
            text: "BBLabel"
        }
        BBGroupedTexts {
            width: 500
            title: "BBGroupedTexts"
            text: "51.2 BC"
        }
        BBGroupedTexts {
            width: parent.width
            title: "BBGroupedTexts parent.width"
            text: "51.2 BC"
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
