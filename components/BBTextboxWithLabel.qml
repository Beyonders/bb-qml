import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2

Column {
    spacing: 2
    property alias label: _label
    property alias textbox: _textbox
    width:100
    BBLabel {
        id: _label
    }
    BBTextField {
        id: _textbox
        width:  parent.width
    }
}
