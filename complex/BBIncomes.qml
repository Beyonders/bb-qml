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
        BBLabel{
            text:"Incomes"
            color:"yellow"
            font.pointSize: 18
            Layout.alignment: Qt.AlignCenter
        }

        BBFramedLabeledText {
            title: "Planets"
            text: "51.2 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
        BBFramedLabeledText {
            title: "Trade"
            text: "11 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
    }
}