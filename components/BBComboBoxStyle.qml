import QtQuick 2.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import "."

ComboBoxStyle {
    id: cbStyle
    padding {
        top: BBStyle.framePadding.top
        left: BBStyle.framePadding.left
        right: BBStyle.framePadding.right
        bottom: BBStyle.framePadding.bottom
    }

    label: Item {
        id: _label
        implicitWidth: textitem.implicitWidth+ BBStyle.framePadding.left
                       + BBStyle.framePadding.right
        implicitHeight: textitem.implicitHeight + BBStyle.framePadding.top
                        + BBStyle.framePadding.bottom
        //    implicitWidth: _combo.implicitWidth + BBStyle.framePadding.left + BBStyle.framePadding.right
        //    implicitHeight: _combo.implicitHeight + BBStyle.framePadding.top + BBStyle.framePadding.bottom
        baselineOffset: textitem.y + textitem.baselineOffset
        Text {
            id: textitem
            anchors.left: parent.left
            anchors.right: parent.right
            //                        anchors.leftMargin: 4
            //                        anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            text: control.currentText
            renderType: cbStyle.renderType
            color: "white"
            //elide: Text.ElideNone
            font.family: BBStyle.font.family
            font.pointSize: BBStyle.font.pointSize
        }
    }

    //            renderType: Text.QtRendering
    background: Item {
        implicitWidth: 200
        //    implicitWidth: _combo.implicitWidth + BBStyle.framePadding.left + BBStyle.framePadding.right
        //    implicitHeight: _combo.implicitHeight + BBStyle.framePadding.top + BBStyle.framePadding.bottom
        Rectangle {
            anchors.fill: parent
            color: "brown"
        }
        Image {
            id: imageItem
            visible: control.menu !== null
            source: "images/arrow-down.png"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: dropDownButtonWidth / 2
            opacity: control.enabled ? 1 : 0.3
        }
        BBFrame {
            id: _frame
            anchors.fill: parent
        }

        BBFocusRectangle{
            anchors.fill: parent
            item:control
        }
    }
    __dropDownStyle: MenuStyle {
        padding {
            top: BBStyle.framePadding.top
            left: BBStyle.framePadding.left
            right: BBStyle.framePadding.right
            bottom: BBStyle.framePadding.bottom
        }
        __maxPopupHeight: 600
        __menuItemType: "comboboxitem"
        __scrollerStyle: ScrollViewStyle {
        }
        frame: Item {
            Rectangle {
                anchors.fill: parent
                color: "brown"
            }
            BBFrame {
                anchors.fill: parent
            }
        }

        //        itemDelegate.background: Rectangle {
        //            visible: styleData.selected && styleData.enabled
        //            gradient: Gradient {
        //                id: selectedGradient
        //                GradientStop {
        //                    color: Qt.lighter(__selectedBackgroundColor, 1.3)
        //                    position: -0.2
        //                }
        //                GradientStop {
        //                    color: __selectedBackgroundColor
        //                    position: 1.4
        //                }
        //            }

        //            border.width: 1
        //            border.color: Qt.darker(__selectedBackgroundColor, 1)
        //            antialiasing: true
        //        }
        itemDelegate.label: Text {
            text: styleData.text
            color: "white"
            font.family: BBStyle.font.family
            font.pointSize: BBStyle.font.pointSize
            renderType: Text.NativeRendering
        }

        //        itemDelegate.submenuIndicator: Text {
        //            text: __mirrored ? "\u25c2" : "\u25b8" // BLACK LEFT/RIGHT-POINTING SMALL TRIANGLE
        //            font.pixelSize: __labelFontPixelSize
        //            color: __currentTextColor
        //            style: styleData.selected ? Text.Normal : Text.Raised
        //            styleColor: Qt.lighter(color, 4)
        //            renderType: Text.NativeRendering
        //        }

        //        itemDelegate.shortcut: Text {
        //            text: styleData.shortcut
        //            font.pixelSize: __labelFontPixelSize * 0.9
        //            color: __currentTextColor
        //            renderType: Text.NativeRendering
        //        }
    }
}
//    }//    //    Component.onCompleted: {//    //        console.log(_combo.implicitWidth)//    //        console.log(_combo.implicitHeight)
//    //        console.log(_combo.height)
//    //        console.log(_combo.width)
//    //    }
//}

