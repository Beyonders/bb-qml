import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "../components"

Row {
    property Component button
    //    anchors.fill: parent
    spacing: 10
    Button {
        text: "normal"
    }

    Loader {
        id: ld1
        sourceComponent: button
        Component.onCompleted: {
            ld1.item.text= "normal"
        }
    }

    Button {
        enabled: false
        text: "disabled"
    }
    Loader {
        id: ld2
        sourceComponent: button
        Component.onCompleted: {
            ld2.item.enabled = false
            ld2.item.text= "disabled"
        }
    }

    Button {
        checkable: true
        checked: true
        text: "checkable 1"
    }
    Loader {
        id: ld4
        sourceComponent: button
        Component.onCompleted: {
            ld4.item.checkable = true
            ld4.item.checked = true
            ld4.item.text= "checkable 1"
        }
    }
    Button {
        checkable: true
        text: "checkable 0"
    }
    Loader {
        id: ld3
        sourceComponent: button
        Component.onCompleted: {
            ld3.item.checkable = true
            ld3.item.text= "checkable 0"
        }
    }
}
