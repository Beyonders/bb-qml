import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import "components"


//    Rectangle{
////        anchors.fill: parent
//            color: "blue"
//    }
Rectangle {
//    width: 800
//    height: 600
    signal handlerLoader(string name, int index)

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
                handlerLoader("MainScreen.qml",0);
            }
        }
        BBFrameButton {
            text: "Start Game"
            width: 200
            height: 50
        }
    }
}
