import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import QtQuick.Layouts 1.1

BBIconButton{
    id: img
    property var race_wnd
    source: "images/random.png"
    onClicked: {
//        console.debug("}}}}}}}}")
        race_wnd.visible=true

    }
}
