import QtQuick 2.3
import QtQuick.Layouts 1.1
import "components"
import "complex"
import QtQuick.Controls 1.2

BBScreen {
    ColumnLayout {
        anchors.fill: parent
        Rectangle{
            id: galaxy
            color: "black"
            Layout.fillWidth: true
            Layout.fillHeight: true
            BBStarField{
                anchors.fill: parent
            }

            Loader  {
                id: research
                source: toolbar.subscreen
                anchors{
                    centerIn: parent
                }
            }
        }


        BBGalaxyToolbar {
            id: toolbar
        }
    }
}
