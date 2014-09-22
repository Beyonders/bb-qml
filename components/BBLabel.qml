import QtQuick 2.0

Text {
    id: _label
    text: "MISSING LABEL TEXT!"
    font.pointSize: 12

    FontLoader { id: font; source: "../fonts/JLSDataGothicR.ttf" }
    font.family: font.name
}

