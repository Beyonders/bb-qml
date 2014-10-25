import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "."
import QtQuick.Layouts 1.1

RowLayout {
    spacing: 0
    BBArrowButton {

        //            anchors {
        //                right: parent.left
        //                verticalCenter: parent.verticalCenter
        //            }
        direction: "left"
        onClicked: slider.value -= 0.1
    }
    Slider {
        id: slider
        implicitWidth: 100
        Layout.fillHeight: false
        Layout.fillWidth: true
        value:0.5

        style: BBSliderStyle {
        }
    }
    BBArrowButton {

        //            anchors {
        //                left: parent.right
        //                verticalCenter: parent.verticalCenter
        //            }
        direction: "right"
        onClicked: slider.value += 0.1
    }
}
