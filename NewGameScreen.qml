import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import "complex"

BBWindow {
    Column {
        enabled: !race_wnd.visible
        anchors.fill: parent
        BBSetPlayerInfo {
            width: parent.width
            race_wnd: race_wnd
        }
        BBSelectComputerPlayers {
            width: parent.width
            race_wnd: race_wnd
        }
        BBSelectGalaxySize {
            width: parent.width
        }
    }
    Row {
        enabled: !race_wnd.visible
        spacing: 5
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 5
        }
        BBFrameButton {
            text: "Main Menu"
            width: 200
            height: 50
            onClicked: {
                handlerLoader("MainScreen.qml")
            }
        }
        BBFrameButton {
            text: "Start Game"
            width: 200
            height: 50
            onClicked: {
                handlerLoader("GalaxyScreen.qml")
            }
        }
    }
    Rectangle{
        anchors.fill: parent
        visible: race_wnd.visible
        color:"black"
        opacity: 0.5
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                // eat mouse events
//            }
//        }
    }
    BBRaceSelection{
        id: race_wnd
        anchors.centerIn: parent
        visible: false
    }

}
