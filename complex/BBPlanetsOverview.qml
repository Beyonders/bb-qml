import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../components"

BBGroupBox {
    ColumnLayout {
        id: x
        spacing: 2

        anchors.fill: parent
        BBPlanetsTable {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        //    Rectangle {
        //        anchors.fill: parent
        //        color: "black"
        //    }
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: false
            spacing: 0
            BBExpenses {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            BBIncomes {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            BBTransferReserve {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
