import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

Button {
    id: buttonItem
    width: 260
    height: 40
    style: ButtonStyle {
        id: styleItem
        label:     Text {
            id: textItem
            text: buttonItem.text

            font {
                family: localFont.name;
                pointSize: 14;
                capitalization: Font.Capitalize
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

        }
        background: Rectangle {
            Image {
                id: bg
                source: buttonItem.pressed ? "images/MainButtonFG.png" : "images/MainButtonBG.png"
//                source: buttonItem.hovered ? "images/MainButtonFG.png" : "images/MainButtonBG.png"
            }
            color: 'transparent'
        }

    }

}

