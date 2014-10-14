import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "."

Rectangle {
//    id: disable
    property Item source
    anchors.fill: parent
    color: "black"
    opacity: (source && source.enabled )? 0 : 0.4
    Behavior on opacity {
        NumberAnimation {
            duration: 200
        }
    }
}
