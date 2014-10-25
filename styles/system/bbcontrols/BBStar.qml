import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import bbcontrols 1.0


//    Sprite {
//        name: "star"
//        source: "./images/star.png"
//        frameCount: 4
//        frameWidth: 32
//        frameHeight: 32
//        frameRate: 20
//    }

//AnimatedSprite {
//    width: 32
//    height: 32
//    paused: true
//    //        anchors.centerIn: parent
//    source: "../images/star.png"
//    frameCount: 4
//    //            frameSync: true
//    //            frameWidth: 32
//    //            frameHeight: 32
//    //        loops: 333
//    frameRate: 1
//    //            currentFrame:
//    SequentialAnimation {
//        running: BBStyle.enableAnimations
//        loops: 1
//        PauseAnimation {
//            duration: modelData[2]
//        }
//        SequentialAnimation {
//            id: seq
//            //                    running: true
//            loops: Animation.Infinite
//            property int time: 500
//            NumberAnimation {
//                target: sprite
//                property: "currentFrame"
//                from: 0
//                to: 3
//                duration: seq.time
//            }
//            NumberAnimation {
//                target: sprite
//                property: "currentFrame"
//                from: 3
//                to: 0
//                duration: seq.time
//            }
//            PauseAnimation {
//                duration: 5000
//            }
//        }
//    }
//}
Image{
    width: 32
    height: 32
    source: "images/star.png"
}
