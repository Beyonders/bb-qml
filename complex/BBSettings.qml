import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import bbcontrols 1.0

BBWindow {
    Column {
        CheckBox {
            text: "Animations"
            checked: BBStyle.enableAnimations
            onClicked: {
                BBStyle.enableAnimations = checked
            }
        }
        CheckBox {
            text: "System Style"
            checked: BBStyle.useSytemStyle
            onClicked: {
                BBStyle.useSytemStyle = checked
            }
        }
        Button {
            text: "OK"
            onClicked: {
                handlerLoader("MainScreen.qml")
            }
        }
    }
}
