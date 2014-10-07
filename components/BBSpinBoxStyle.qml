import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

SpinBoxStyle {
    id: spinboxStyle
    padding {
        top: 1
        left: Math.max(22, Math.round(styleData.contentHeight))
        right: Math.max(22, Math.round(styleData.contentHeight))
        bottom: 0
    }
    textColor: "white"
    selectionColor: "yellow"
    selectedTextColor: "black"

    property Component background: Item {
        implicitHeight:14 //because of fix arrow height // Math.max(25, Math.round(styleData.contentHeight * 1.2))
        implicitWidth: styleData.contentWidth + padding.left + padding.right
        baselineOffset: control.__baselineOffset
        Rectangle {
            id: baserect
            anchors.fill: parent
//            border.color: control.activeFocus ? "#47b" : "#999"
            color: "black"
        }
    }

    property Component incrementControl:
        Image {
            source: "../images/arrow-up.png"
            opacity: control.enabled ? (styleData.upPressed ? 0.8:1 ) : 0.5
        }
    property Component decrementControl:
        Image {
            source: "../images/arrow-down.png"
            opacity: control.enabled ? (styleData.upPressed ? 0.8:1 ) : 0.5
        }

    //    font.family: BBStyle.font.family
    //    font.pointSize: BBStyle.font.pointSize
    panel: Item {
        id: styleitem
        implicitWidth: backgroundLoader.implicitWidth
        implicitHeight: backgroundLoader.implicitHeight
        baselineOffset: backgroundLoader.item ? backgroundLoader.item.baselineOffset : 0

        property color foregroundColor: spinboxStyle.textColor
        property color selectionColor: spinboxStyle.selectionColor
        property color selectedTextColor: spinboxStyle.selectedTextColor

        property var margins: spinboxStyle.padding

        property rect upRect: Qt.rect(
                                  width - incrementControlLoader.implicitWidth,
                                  0, incrementControlLoader.implicitWidth,
                                  height )
        property rect downRect: Qt.rect(
                                    0,
                                    0,
                                    decrementControlLoader.implicitWidth,
                                    height )

        property int horizontalAlignment: spinboxStyle.horizontalAlignment
        property int verticalAlignment: Qt.AlignVCenter

        Loader {
            id: backgroundLoader
            anchors.fill: parent
            sourceComponent: background
        }

        Loader {
            id: incrementControlLoader
            x: upRect.x
            y: upRect.y
            width: upRect.width
            height: upRect.height
            sourceComponent: incrementControl
        }

        Loader {
            id: decrementControlLoader
            x: downRect.x
            y: downRect.y
            width: downRect.width
            height: downRect.height
            sourceComponent: decrementControl
        }
    }
}
