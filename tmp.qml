import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import "components"
import "tests"
import "complex"

Window {
    id: wnd
    width: 999
    height: 600

//    Rectangle {
//        anchors.fill: parent
//        color: "blue"
//    }
//    //    Sprite {
//    //        name: "star"
//    //        source: "./images/star.png"
//    //        frameCount: 4
//    //        frameWidth: 32
//    //        frameHeight: 32
//    //        frameRate: 20
//    //    }
//    Repeater {
//        model: [//            [1, 2],
//            //            [711, 422],
//            //            [21, 442],
//            //            [111, 62],
//            //            [331, 332],
//            //            [331, 222],
//            //            [541, 273],
//                        [765, 92,1000],
//            //            [431, 2],
//            [15, 17,2000]]
//        AnimatedSprite {
//            id: sprite
//            x: modelData[0]
//            y: modelData[1]
//            width: 32
//            height: 32
//            paused: true
//            //        anchors.centerIn: parent
//            source: "./images/star.png"
//            frameCount: 4
//            //            frameSync: true
//            //            frameWidth: 32
//            //            frameHeight: 32
//            //        loops: 333
//            frameRate: 1
//            //            currentFrame:
//            SequentialAnimation {
//                running: true
//                loops: 1
//                PauseAnimation {
//                    duration: modelData[2]
//                }
//                SequentialAnimation {
//                id: seq
//                running: true
//                loops: Animation.Infinite
//                property int time: 500
//                NumberAnimation {
//                    target: sprite
//                    property: "currentFrame"
//                    from: 0
//                    to: 3
//                    duration: seq.time
//                }
//                NumberAnimation {
//                    target: sprite
//                    property: "currentFrame"
//                    from: 3
//                    to: 0
//                    duration: seq.time
//                }
//                PauseAnimation {
//                    duration: 5000
//                }
//            }
//}        }
//    }

    //TestScreen{}
        GalaxyScreen
    //    BBShipDesign
    //    BBPlanetsOverview{
    //        BBResearch
    //        TestArrowButton
//    BBStarField
        {
                                            anchors.fill: parent
        }
}
