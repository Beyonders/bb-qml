import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import bbcontrols 1.0

Rectangle {
    id: sel
    width: 33
    height: width
    color: "transparent"
    radius: 5
    border {
        color: "yellow"
        width: 2
    }
    Behavior on x {
        NumberAnimation {
            duration: 400
        }
    }
    Behavior on y {
        NumberAnimation {
            duration: 400
        }
    }
}
