import QtQuick 2.2
import QtQuick.Window 2.2
import bbcontrols 1.0
import QtQuick.Dialogs 1.1
import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

import "tests"
import "complex"
Window {
    id: wnd
    width: 999
    height: 700
    title: "test"

    //Binding
    //TestScreen{}
//            GalaxyScreen
//            BBShipDesign
//        BBPlanetsOverview
    //            BBResearch
    //            TestArrowButton
//        BBStarField
//        BBStarControl
//        RaceSelectionScreen
        NewGameScreen
    //    MainScreen
//    TestFrameImageTextH
//        BBSetPlayerInfo
//        BBSelectComputerPlayers
//        BBSelectGalaxySize
//BBSetPlayerInfo
        {
            anchors.fill: parent
        }
}
