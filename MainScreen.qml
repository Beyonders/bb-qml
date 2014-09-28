import QtQuick 2.3
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import "components"

BBScreen {
    Rectangle{
        color: "black"
        width: parent.width
        height: parent.height
    }

    Image {
        id: bg
        anchors.centerIn: parent
        source: "images/planet.png"
    }
    FontLoader {
        id: localFont;
        source: "fonts/JLSSpaceGothicR.ttf"
    }

    Text {
        id: _title
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

            ShaderEffectSource {
                id: theSource
                sourceItem: _title
        //        live: false
            }
            ShaderEffect {
                width: _title.width
                height: _title.height
                blending:true
                property variant source: theSource
                property real amplitude: 0.005
                property real frequency: 10
                property real time: 0
                NumberAnimation on time { loops: Animation.Infinite; from: 0; to: Math.PI * 2; duration: 600 }
                fragmentShader:
                    "uniform lowp float qt_Opacity;" +
                    "uniform highp float amplitude;" +
                    "uniform highp float frequency;" +
                    "uniform highp float time;" +
                    "uniform sampler2D source;" +
                    "varying highp vec2 qt_TexCoord0;" +
                    "void main() {" +
                    "    highp vec2 p = sin(time + frequency * qt_TexCoord0);" +
                    "    gl_FragColor = texture2D(source, qt_TexCoord0 + amplitude * vec2(p.y, -p.x)) * qt_Opacity;" +
                    "}"
            }
    }
    Column{
        anchors.centerIn: parent
        spacing: 10

        BBMainButton {
            text: "Continue"
            enabled: false
        }
        BBMainButton {
            text: "New"
            onClicked: {
                handlerLoader("NewGameScreen.qml");
            }
        }
        BBMainButton {
            text: "Load"
            enabled: false
        }
        BBMainButton {
            text: "Exit"
            onClicked: {
                Qt.quit();
            }
        }
    }

}
