import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "."
import QtQuick.Layouts 1.1

RowLayout {
    spacing: 4
    BBSlider {
        id: slider
        Layout.fillWidth: true
        enabled: !lock.checked
    }
    BBLockButton {
        id:lock
        Layout.fillWidth: false
    }
}
