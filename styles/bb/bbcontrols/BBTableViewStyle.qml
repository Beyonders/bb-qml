import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

TableViewStyle {
    id: _style
//    padding {
//        top: BBStyle.framePadding.top
//        left: BBStyle.framePadding.left
//        right: BBStyle.framePadding.right
//        bottom: BBStyle.framePadding.bottom
//    }

    headerDelegate: BBGroupBox {
        color: "darkblue"
//        height: textItem.implicitHeight * 1.2
//        border.left: 4
//        border.bottom: 2
//        border.top: 2
        BBLabel {
            id: textItem
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: styleData.textAlignment
//            anchors.leftMargin: 12
            text: styleData.value
            elide: Text.ElideRight
//            color: textColor
//            renderType: Text.NativeRendering
        }
//        Rectangle {
//            anchors.right: parent.right
//            anchors.top: parent.top
//            anchors.bottom: parent.bottom
//            anchors.bottomMargin: 1
//            anchors.topMargin: 1
//            width: 1
//            color: "#ccc"
//        }
    }
    property Item _dummy:
     BBGroupBox {
//        id: _dummy
//        height: Math.max(16, label.implicitHeight)
//        property int implicitWidth: label.implicitWidth + 20
//        height:55
//        color: "darkgreen"

        BBLabel {
//            objectName: "label"
//            width: parent.width
//            anchors.leftMargin: 12
//            anchors.left: parent.left
//            anchors.right: parent.right
//            horizontalAlignment: styleData.textAlignment
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.verticalCenterOffset: 1
//            elide: styleData.elideMode
            text: "dummy"
//            color: styleData.textColor
//            renderType: Text.NativeRendering
//            color: "blue"
        }
    }
    rowDelegate: Rectangle {
        height: _dummy.height
//        height: Math.round(TextSingleton.implicitHeight * 1.2)
//        property color selectedColor: styleData.hasActiveFocus ? "#07c" : "#999"
//        color: styleData.selected ? selectedColor :
//                                    !styleData.alternate ? alternateBackgroundColor : backgroundColor
        color: styleData.selected ? "blue" :
                                    !styleData.alternate ? "green" : "darkgreen"
    }

    itemDelegate: BBGroupBox {
//        height: Math.max(16, label.implicitHeight)
//        property int implicitWidth: label.implicitWidth + 20
//        height:55
        color: "transparent"

        BBLabel {
            id: label
            objectName: "label"
//            width: parent.width
//            anchors.leftMargin: 12
//            anchors.left: parent.left
//            anchors.right: parent.right
//            horizontalAlignment: styleData.textAlignment
//            anchors.verticalCenter: parent.verticalCenter
//            anchors.verticalCenterOffset: 1
//            elide: styleData.elideMode
            text: styleData.value !== undefined ? styleData.value : ""
//            color: styleData.textColor
//            renderType: Text.NativeRendering
//            color: "blue"
        }
    }


}
