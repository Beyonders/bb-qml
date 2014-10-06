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
            text:"Expenses"
            color:"yellow"
            font.pointSize: 18
            Layout.alignment: Qt.AlignCenter
        }
        GridLayout{
            columns: 2

        BBFramedLabeledText {
            title: "Ships"
            text: "51.2 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
        BBFramedLabeledText {
            title: "Spying"
            text: "11 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
        BBFramedLabeledText {
            title: "Bases"
            text: "11 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
        BBFramedLabeledText {
            title: "Security"
            text: "11 BC"
            Layout.fillWidth: true
            //        Layout.fillHeight: true
        }
    }
}
}
