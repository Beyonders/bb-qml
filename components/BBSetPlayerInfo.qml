import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

BBFrame {
    //    implicitHeight:label1.implicitHeight+frame2.implicitHeight+20+5
    implicitHeight: Math.max(col2.implicitHeight, race_info.implicitHeight) + 20
    implicitWidth: 600
    //    property int _split: width * 0.4
    BBFrameImageText {
        id: race_info

        anchors {
            left: col2.right
            right: parent.right
            margins: 10
            verticalCenter: parent.verticalCenter
        }
        source: "../images/random.png"
        text: "A random race will be chosen."
              + " If the Emperor and/or Homeworld name fields are left blank, "
              + "default race names for those will be used."
    }
    Column {
        anchors {
            left: parent.left
            //                right: parent.left+_split
            right: parent.horizontalCenter
            margins: 10
            verticalCenter: parent.verticalCenter
        }

        id: col2
        spacing: 5

        BBLabel {
            id: label1
            text: "Player Race Information"
            //            horizontalAlignment: Text.AlignHCenter
            //            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
        }
        BBFrame {
            id: frame2
            width: parent.width
            //height: col1.height

            //width: 222
            //height: 222
            implicitHeight: homeworld.implicitHeight + emperor.implicitHeight + 20 + 5
            Column {
                id: col1
                anchors.fill: parent
                anchors.margins: 10
                //                width: parent.width
                spacing: 5
                BBTextboxWithLabel {
                    id: emperor
                    width: parent.width
                    label.text: "Emperor Name"
                    textbox.text: "Me"
                }
                BBTextboxWithLabel {
                    id: homeworld
                    width: parent.width
                    label.text: "Homeworld Name"
                    textbox.text: "x"
                }
            }
        }
    }
}
