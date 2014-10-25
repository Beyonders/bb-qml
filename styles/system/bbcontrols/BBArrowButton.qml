import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

Button {
    property string direction: "up"
    implicitWidth: 20
    text: direction=="left" ? "<":direction=="right"?">":direction=="up"?"A":"V"
}
