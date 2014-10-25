import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import bbcontrols 1.0


BBGroupBox {
    property alias text: label.text
    property alias image: _img.source
    RowLayout {
        anchors.fill: parent
        Image {
            id: _img
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
