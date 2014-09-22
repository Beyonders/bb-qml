import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    width: 800
    height: 600

    Loader  {
        id: pageLoader
        source: "MainScreen.qml"
        anchors.fill: parent
    }
    signal handlerLoader(string name, int index)
    Connections {
        target:pageLoader.item
        onHandlerLoader:{
            pageLoader.source=name;
        }
    }

}
