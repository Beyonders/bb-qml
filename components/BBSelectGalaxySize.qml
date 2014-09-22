import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2

Column
{
    spacing: 0

    BBComboBox{
        width: img.width
        model: ListModel {
            id: cbItems
            ListElement { text: "Small" }
            ListElement { text: "Huge" }
        }

    }
    BBFrameImage{
        id: img
        source: "../images/random.png"
    }


}
