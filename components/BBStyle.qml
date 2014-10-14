pragma Singleton
import QtQuick 2.0

Item{
    property alias font: _font
    QtObject{
        id: _font;
        property real pointSize: 12
        property string family: _font_loader.name

    }
    FontLoader {
        id: _font_loader;
        source: "../fonts/JLSDataGothicR.ttf"
    }
    property QtObject framePadding:
    QtObject{
        property int left: 5
        property int right: 5
        property int top: 5
        property int bottom: 5
    }
}
