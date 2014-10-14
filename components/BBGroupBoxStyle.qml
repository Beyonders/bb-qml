import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

Item {
        readonly property GroupBox control: __control
    property int _padding: 5
    property QtObject  padding
    padding : QtObject{
        property int  top: BBStyle.framePadding.top+_padding
        property int  left: BBStyle.framePadding.left+_padding
        property int  right: BBStyle.framePadding.right+_padding
        property int  bottom: BBStyle.framePadding.bottom+_padding
    }
    property Component panel: BBFrame{
        anchors{
            fill: parent
//            margins: 20
        }
        Rectangle{
            anchors.fill:parent
            color:__control.color
            z: -1
        }

    }
}
