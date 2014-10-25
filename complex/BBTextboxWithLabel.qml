import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import bbcontrols 1.0
import QtQuick.Layouts 1.1

ColumnLayout {
    spacing: 2
    property alias label: _label
    property alias textbox: _textbox
    BBLabel {
        Layout.fillWidth: true
        id: _label
    }
    BBTextField {
        Layout.fillWidth: true
        id: _textbox
        width:  parent.width
    }
}
