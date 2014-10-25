import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import "../complex"

BBWindow {
    property string longtext: "A random race will be chosen."
                              + " If the Emperor and/or Homeworld name fields are left blank, "
                              + "default race names for those will be used."

    Column {
        //        anchors.fill: parent
        spacing: 10

        BBTextboxWithLabel {
            label.text: "Emperor Name"
            textbox.text: "Me"
        }
    }
}
