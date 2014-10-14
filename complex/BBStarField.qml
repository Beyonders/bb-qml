import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../components"
import QtGraphicalEffects 1.0

Rectangle {
    color: "black"

    //    Sprite {
    //        name: "star"
    //        source: "./images/star.png"
    //        frameCount: 4
    //        frameWidth: 32
    //        frameHeight: 32
    //        frameRate: 20
    //    }
    Image{
            anchors.fill: parent
        source: "../images/finalfrontier.png"
    }

    Rectangle {
        id: sel
        width: 33
        height: width
        color: "transparent"
        radius: 5
        border {
            color: "yellow"
            width: 2
        }
        Behavior on x {
            NumberAnimation {
                duration: 400
            }
        }
        Behavior on y {
            NumberAnimation {
                duration: 400
            }
        }
    }
    Repeater {
        model: [[1, 2, 0, "yellow"], [711, 422, 500, "white"], [21, 442, 1000, "lightblue"], [111, 62, 1500, "lightgreen"], [331, 332, 2000, "blue"], [331, 222, 2500, "orange"], [541, 273, 3000, "gray"], [765, 92, 3500, "red"], [431, 2, 4000, "green"], [415, 317, 4500, "green"]]
        Item {
            AnimatedSprite {
                id: sprite
                x: modelData[0]
                y: modelData[1]
                width: 32
                height: 32
                paused: true
                //        anchors.centerIn: parent
                source: "../images/star.png"
                frameCount: 4
                //            frameSync: true
                //            frameWidth: 32
                //            frameHeight: 32
                //        loops: 333
                frameRate: 1
                //            currentFrame:
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        sel.x = sprite.x
                        sel.y = sprite.y
                    }
                }
                SequentialAnimation {
                    running: true
                    loops: 1
                    PauseAnimation {
                        duration: modelData[2]
                    }
                    SequentialAnimation {
                        id: seq
                        //                    running: true
                        loops: Animation.Infinite
                        property int time: 500
                        NumberAnimation {
                            target: sprite
                            property: "currentFrame"
                            from: 0
                            to: 3
                            duration: seq.time
                        }
                        NumberAnimation {
                            target: sprite
                            property: "currentFrame"
                            from: 3
                            to: 0
                            duration: seq.time
                        }
                        PauseAnimation {
                            duration: 5000
                        }
                    }
                }
            }
            ColorOverlay {
                anchors.fill: sprite
                source: sprite
                color: modelData[3]
            }
//            RadialGradient {
//                anchors.fill: sprite
//                source:sprite
//                gradient: Gradient {
//                    GradientStop { position: 0.0; color: "white" }
//                    GradientStop { position: 0.4; color: "black" }
//                }
//            }
        }
    }
    BBStarControl{
        anchors{
            right:parent.right

        }
    }
}
