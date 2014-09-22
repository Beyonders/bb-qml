import QtQuick 2.3
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1


Rectangle{
//    visible: true
//    width: 800
//    height: 600
    signal handlerLoader(string name, int index)

    Rectangle{
        color: "black"
        width: parent.width
        height: parent.height
    }

    Image {
        id: bg
        source: "images/Title planet.png"
    }
    FontLoader {
        id: localFont;
        source: "fonts/JLSSpaceGothicR.ttf"
    }

    Text {
        text: "Beyond Beyaan"

        color: "yellow"
        anchors.horizontalCenter: parent.horizontalCenter

        y: 100

        font {
            family: localFont.name;
            pointSize: 34;
            capitalization: Font.Capitalize
        }
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

    }
    Column{
        anchors.centerIn: parent
        spacing: 10

        MyButton {
            text: "Continue"
            enabled: false
        }
        MyButton {
            text: "New"
            onClicked: {
                handlerLoader("NewGame.qml",0);
            }
        }
        MyButton {
            text: "Load"
            enabled: false
        }
        MyButton {
            text: "Exit"
            onClicked: {
                Qt.quit();
            }
        }
    }

}
