import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import "components"


BBScreen {
    Column {
                anchors.fill: parent
        BBSetPlayerInfo {
            width: parent.width
        }
        BBSelectComputerPlayers {
            width: parent.width
//            height: 555
        }
        BBSelectGalaxySize {
            width: parent.width
//            height: 555
        }
    }
    Row {
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
//                console.log("clicked" )
                handlerLoader("MainScreen.qml");
            }
        }
        BBFrameButton {
            text: "Start Game"
            width: 200
            height: 50
        }
    }
}
