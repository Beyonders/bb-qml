import QtQuick 2.3
import QtQuick.Layouts 1.1
import "components"
import "complex"
import QtQuick.Controls 1.2

BBScreen {
    ColumnLayout {
        anchors.fill: parent
//        Research {
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//        }
        Loader  {
            id: research
            source: toolbar.subscreen
            Layout.fillWidth: true
            Layout.fillHeight: true
//            anchors.fill: parent
        }

        BBGalaxyToolbar {
            id: toolbar
        }
    }
}
