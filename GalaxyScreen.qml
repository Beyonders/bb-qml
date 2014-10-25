import QtQuick 2.3
import QtQuick.Layouts 1.1
import "complex"
import QtQuick.Controls 1.2
import bbcontrols 1.0

ColumnLayout {
    spacing: 0
    anchors.fill: parent
    Rectangle {
        id: galaxy
        color: "black"
        Layout.fillWidth: true
        Layout.fillHeight: true
        BBStarField {
            anchors.fill: parent
        }

        Loader {
            anchors {
                centerIn: parent
            }
            id: subscreen
            source: toolbar.subscreen
        }
    }

    BBGalaxyToolbar {
        id: toolbar
    }
}
