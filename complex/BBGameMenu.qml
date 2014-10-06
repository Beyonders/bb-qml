import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../components"

BBGroupBox {
    GridLayout {
        columns: 2

        BBFrameButton {
            text: "Load Game"
            Layout.fillWidth: true
        }
        BBFrameButton {
            text: "Save Game"
            Layout.fillWidth: true
        }
        BBFrameButton {
            text: "New Game"
            Layout.fillWidth: true
        }
        BBFrameButton {
            text: "Exit Game"
            Layout.fillWidth: true
        }
    }
}
