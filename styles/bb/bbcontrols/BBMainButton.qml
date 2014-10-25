import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

BBImageButton {
    source: "images/main.png"
    //    source_pressed:  "images/main-pressed.png"
    property Component _style: BBImageButtonStyle {
                               }
    style: BBStyle.useSytemStyle ? BBStyle.defaultStyle.button: _style
}
