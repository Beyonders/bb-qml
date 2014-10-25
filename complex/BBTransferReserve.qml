import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import bbcontrols 1.0

BBGroupBox {
    ColumnLayout {
        id: x
        spacing: 2
        anchors.fill: parent

        BBLabeledText {
            title: "Reserve"
            text: "51.2 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
        BBSlider{
            Layout.fillWidth: true

        }

        BBLabeledText {
            title: "Amount to transfer"
            text: "11 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
        BBSlider{
            Layout.fillWidth: true

        }
        BBFrameButton{
            text: "Transfer"
            tooltip: "Transfer reserves to selected planet"
            Layout.fillWidth: true
        }
    }
}
