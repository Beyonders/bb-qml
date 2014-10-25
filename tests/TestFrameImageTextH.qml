import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import "../complex"
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

BBWindow{
    width: 800
    height: 300
    id: wnd
    property string longtext: "A random race will be chosen."
                              + " If the Emperor and/or Homeworld name fields are left blank, "
                              + "default race names for those will be used."

    Column {
        //        anchors.fill: parent
        spacing: 10
        width: parent.width

        BBLabel {
            text: "BBFrameImageTextH"
        }
        BBFrameImageTextH {
            text: longtext
        }
        BBFrameImageTextH {
            text: longtext
            width: parent.width
        }
        RowLayout {
            BBFrameImageTextH {
                text: longtext+longtext
                width: 300
            }
            BBFrameImageTextH {
                text: longtext
                width: 300
                height: 200
            }
            BBFrameImageTextH {
                text: longtext+longtext+longtext
            }
        }
    }
}
