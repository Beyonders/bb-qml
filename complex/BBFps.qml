import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

Item {
    id: root
    property int frameCounter: 0
    property int fps: 0;

    width: 120
    height: 48

    Rectangle {
        id: spinnerImage
//        source: "images/spinner.png"
        color: "transparent"
        visible: false
        z:-1
        width:100
        height:100
        NumberAnimation on x{
            from:0
            to: 60
            duration: 1000
            loops: Animation.Infinite
        }
        onXChanged: frameCounter++;
    }

    Text {
        anchors.fill: parent
//        anchors.right: parent.right
//        anchors.verticalCenter: spinnerImage.verticalCenter
        color: "#ffffff"
        style: Text.Outline
        styleColor: "#606060"
        font.pixelSize: 28
        text: root.fps + " fps"
    }

    Timer {
        interval: 2000
        repeat: true
        running: true
        onTriggered: {
            fps = frameCounter/2;
            frameCounter = 0;
        }
    }
}
