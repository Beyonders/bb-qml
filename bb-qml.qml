import QtQuick 2.3
import QtQuick.Window 2.2
import "components"

Window {
    width: 1000
    height: 700

    title: "BB-QML"

    Loader  {
        id: pageLoader
        source: "MainScreen.qml"
        anchors.fill: parent
    }
    signal handlerLoader(string name)
    Connections {
        target:pageLoader.item
        onHandlerLoader:{
            pageLoader.source=name;
        }
    }

    BBFps {
        anchors {
            top: parent.top
            topMargin: 8
            left: parent.left
            leftMargin: 8

        }

    }
}
