import QtQuick 2.3
import QtQuick.Layouts 1.1
import "../components"
import QtQuick.Controls 1.2

RowLayout {
    property string subscreen: research.checked ? "complex/BBResearch.qml" :
                                                  planets.checked ? "complex/BBPlanetsOverview.qml" :
                                                                    design.checked ? "complex/BBShipDesign.qml" :
                           gamemenu.checked ? "complex/BBGameMenu.qml":""
    spacing: 0
    ExclusiveGroup {
        id: excl
    }
    BBFrameButton {
        id: gamemenu
        Layout.fillWidth: true
        text: "Game Menu"
        checkable: true
        exclusiveGroup: excl
    }

    BBFrameButton {
        id: design
        Layout.fillWidth: true

        text: "Design Ships"
        checkable: true
        exclusiveGroup: excl
    }
    BBFrameButton {
        Layout.fillWidth: true

        text: "Fleets Overview"
        checkable: true
        exclusiveGroup: excl
    }
    BBFrameButton {

        Layout.fillWidth: true
        text: "Diplomacy"
        checkable: true
        exclusiveGroup: excl
    }
    BBFrameButton {
        id: planets
        Layout.fillWidth: true
        text: "Planets Overview"
        checkable: true
        exclusiveGroup: excl
    }
    BBFrameButton {
        id: research

        Layout.fillWidth: true
        text: "Manage Research"
        checkable: true
        exclusiveGroup: excl
    }
    BBFrameButton {

        Layout.fillWidth: true
        text: "End Turn"
    }
}

