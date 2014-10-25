import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import QtQuick.Layouts 1.1

BBGroupBox {
    id: root
    property alias source: img.source
    property alias text: area.text
//    signal clicked()
//    Connections {
//        target: img
//        onClicked: clicked()
//    }
    property alias race_wnd: img.race_wnd
    RowLayout {
        id: row
        spacing: 5
        anchors.fill: parent
        BBRaceSelectionButton {
            id: img
//            source: "images/random.png"
            Layout.fillWidth: false
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignVCenter
        }
        BBLabel {
            id: area
            wrapMode: Text.WordWrap
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: 200
            Layout.minimumWidth: 100
        }
    }
}
