import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

Rectangle {
    id: _button
    property alias text: buttonLabel.text
    property color buttonColor: "lightblue"
    property color onHoverColor: "gold"
//    property color borderColor: "white"
    //property string text: "MISSING!"

//    anchors.fill: parent
    width: 200
    height: 50

    MouseArea{
        id: buttonMouseArea
        onClicked: _button.clicked()
        hoverEnabled: true
//        onEntered: parent.color = onHoverColor
//        onExited:  parent.color = buttonColor

        anchors.fill: parent
    }
    signal clicked()
//         onButtonClick: {
//             console.log(buttonLabel.text + " clicked" )
//         }
    color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5) :
                                     buttonMouseArea.containsMouse ?
                                     onHoverColor : buttonColor

    BBFrame{
        anchors.fill: parent
    }
    BBLabel{
        id: buttonLabel
        anchors.centerIn: parent
        text: "button label"
    }
//    Component.onCompleted:{

//        console.log(_button.implicitHeight)
//        console.log(_button.height)
//        console.log(_button.implicitWidth)
//        console.log(_button.width)
//    }
}

