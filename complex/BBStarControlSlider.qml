import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "../components"

BBGroupBox {
    property alias text: label.text
    property alias image: _button.source
    RowLayout {
        anchors.fill: parent
        BBIconButton {
            id: _button
        }

        ColumnLayout {
            spacing: 0
            BBLabel {
                id: label
                Layout.fillWidth: true
            }
            BBSliderWithLock {
                Layout.fillWidth: true
            }
        }
    }
}
