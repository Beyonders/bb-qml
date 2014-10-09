import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

BBIconButton {
    property string direction: "up"
    source: "../images/arrow-" + direction + ".png"
    source_pressed: "../images/arrow-" + direction + "-pressed.png"
}
