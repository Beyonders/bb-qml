import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "."

Item {
    property Item item
    Rectangle {
        id: activeFocus
        anchors.fill: parent
        color: "yellow"
        opacity: item.activeFocus ? 0.2 : 0
        Behavior on opacity {
            NumberAnimation {
                duration: 200
            }
        }
    }

    Rectangle {
        id: hovered
        anchors.fill: parent
        color: "white"
        opacity: item.hovered ? 0.3 : 0
        //        opacity: 0
        SequentialAnimation on opacity {
            running: item.hovered
            loops: Animation.Infinite
            NumberAnimation {
                from: 0.2
                to: 0.3
                duration: 200
            }
            NumberAnimation {
                to: 0.2
                from: 0.3
                duration: 200
            }
        }
        Behavior on opacity {
            NumberAnimation {
                duration: 200
            }
        }
    }
    Rectangle {
        id: disable
        anchors.fill: parent
        color: "black"
        opacity: item.enabled ? 0 : 0.4
        Behavior on opacity {
            NumberAnimation {
                duration: 200
            }
        }
    }
    //    ShaderEffectSource {
    //        id: theSource
    //        sourceItem: item.hovered ? item : null
    ////        live: false
    //    }
    //    ShaderEffect {
    //        width: item.width
    //        height: item.height
    //        blending:true
    //        property variant source: theSource
    //        property real amplitude: 0.003
    //        property real frequency: 20
    //        property real time: 0
    //        NumberAnimation on time { loops: Animation.Infinite; from: 0; to: Math.PI * 2; duration: 600 }
    //        fragmentShader:
    //            "uniform lowp float qt_Opacity;" +
    //            "uniform highp float amplitude;" +
    //            "uniform highp float frequency;" +
    //            "uniform highp float time;" +
    //            "uniform sampler2D source;" +
    //            "varying highp vec2 qt_TexCoord0;" +
    //            "void main() {" +
    //            "    highp vec2 p = sin(time + frequency * qt_TexCoord0);" +
    //            "    gl_FragColor = texture2D(source, qt_TexCoord0 + amplitude * vec2(p.y, -p.x)) * qt_Opacity;" +
    //            "}"

    //    }
}
