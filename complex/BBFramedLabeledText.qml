import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import bbcontrols 1.0

BBGroupBox {
    id: _box
    property alias label: _labeled_text.title
    property alias text: _labeled_text.text
    color: "darkblue"
    BBLabeledText {
        anchors.fill: parent
        id: _labeled_text
    }
}
