import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0

BBGroupBox{
    property alias source: img.source
    property alias race_wnd: img.race_wnd
    BBRaceSelectionButton {
        id: img
//        anchors.centerIn: parent
    }
}
