import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import QtQuick.Layouts 1.1

BBIconButton{
    id: img
    property var race_wnd
    property string selected: "random"
    source: Qt.resolvedUrl("../images/"+selected+".png")
    onClicked: {
        race_wnd.visible=true
        race_wnd.caller = img
        race_wnd.selected = selected

    }
}
