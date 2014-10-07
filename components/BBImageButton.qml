import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

Button {
    property string source
    implicitWidth: img.implicitWidth
        implicitHeight:img.implicitHeight
    Image {
        id: img
        source: parent.pressed ? parent.source : parent.source
    }
//    style: BBMainButtonStyle {
//    }
}
