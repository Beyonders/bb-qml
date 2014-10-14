import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import "components"
import "tests"
import "complex"

Window {
    id: wnd
    width: 999
    height: 700


    //TestScreen{}
//        GalaxyScreen
//        BBShipDesign
    //    BBPlanetsOverview{
//            BBResearch
    //        TestArrowButton
//    BBStarField
//    BBStarControl
//    RaceSelectionScreen
    NewGameScreen
        {
                                            anchors.fill: parent
        }
}


//import QtQuick 2.0
//import QtGraphicalEffects 1.0

//Item {
//    width: 300
//    height: 300

//    RadialGradient {
//        anchors.fill: parent
//        gradient: Gradient {
//            GradientStop { position: 0.0; color: "white" }
//            GradientStop { position: 0.5; color: "black" }
//        }
//    }
//}
