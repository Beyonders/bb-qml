import QtQuick 2.3
import QtQuick.Layouts 1.1
import "../components"
import QtQuick.Controls 1.2

//BBScreen {
    RowLayout {
        property string subscreen: research.checked ? "complex/BBResearch.qml":""
        spacing: 0
//        anchors {
////            bottom: parent.bottom
//            left: parent.left
//            right: parent.right
//        }
        ExclusiveGroup {
            id: excl
        }
        BBFrameButton {
            Layout.fillWidth: true
            text: "Game Menu"
            checkable: true
            exclusiveGroup: excl
        }

        BBFrameButton {
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

            Layout.fillWidth: true
            text: "Planets Overview"
            checkable: true
            exclusiveGroup: excl
        }
        BBFrameButton {
            id:research

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
//}
