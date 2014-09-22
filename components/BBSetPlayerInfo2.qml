import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

Item {
    //    implicitHeight:label1.implicitHeight+frame2.implicitHeight+20+5
    implicitHeight: 333
    //Math.max(col2.implicitHeight, race_info.implicitHeight) + 20
    implicitWidth: 600
    //    property int _split: width * 0.4
    BBTextboxWithLabel {
        id: xxx
        width: parent.width
        label.text: "Homeworld Name"
        textbox.text: "x"
    }

}
