pragma Singleton

import QtQuick

Item {
    id: colors
    property color background: "#1D2230"
    property color black: "#282e3f"
    property color comment: "#5c637a"

    // Foregrounds
    property color foreground: "#a5a296"
    property color white: "#EAE6DA"

    // Colors
    property color green: "#80a961"
    property color blue: "#394260"
    property color yellow: "#D9B36C"
    property color magenta: "#7E6BC4"
    property color red: "#c46b6b"
    property color cyan: "#6ba2c4"

    property color primary: green
    property color secondary: magenta

    property color surface: black
    property color hover: comment

    property color shadow: Qt.darker(background, 2)
}
