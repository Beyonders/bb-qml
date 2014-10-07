import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    width: 1000
    height: 700

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

}
