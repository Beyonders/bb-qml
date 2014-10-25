import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0

BBGroupBox{
    property alias source: img.source
    Image {
        id: img
        anchors.centerIn: parent
        source: "../images/random.png"
    }
}
