import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import bbcontrols 1.0

RowLayout {
    property alias title: _titleLabel.text
    property alias text: _label.text
    id: _layout
    BBLabel {
        id: _titleLabel
        color: "orange"
        Layout.alignment: Qt.AlignLeft
        Layout.fillWidth: true
    }
    BBLabel {
        id: _label
        Layout.alignment: Qt.AlignRight
    }
}
