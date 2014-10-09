import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "../components"

BBScreen {
    property var dirs: ["up", "down", "left", "right"]

    Column {
        anchors.fill: parent
        spacing: 10
        BBLabel {
            text: "BBArrowButton"
        }

        Component {
            id: up
            BBArrowButton {
                direction: "up"
            }
        }
        ButtonTester {
            button: up
        }

        Component {
            id: down
            BBArrowButton {
                direction: "down"
            }
        }
        ButtonTester {
            button: down
        }
        Component {
            id: left
            BBArrowButton {
                direction: "left"
            }
        }
        ButtonTester {
            button: left
        }
        Component {
            id: right
            BBArrowButton {
                direction: "right"
            }
        }
        ButtonTester {
            button: right
        }

        BBLabel {
            text: "BBSpinBox"
        }
        BBSpinBox {
        }
        BBLabel {
            text: "BBImageSelection"
        }
        BBImageSelection {
        }
        BBLabel {
            text: "BBLockButton"
        }
        Component {
            id: lock
            BBLockButton {
            }
        }
        ButtonTester {
            button: lock
        }
        Component {
            id: main
            BBMainButton {
            }
        }
        ButtonTester {
            button: main
        }
    }
}
