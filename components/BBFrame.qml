import QtQuick 2.0

Item {
    BorderImage {
        anchors.fill: parent
    id: name
    source: "../images/border3.png"
    width: 100; height: 100
    border.left: 30; border.top: 13
    border.right: 30; border.bottom: 13
    horizontalTileMode: BorderImage.Repeat
    verticalTileMode: BorderImage.Repeat
}
}

