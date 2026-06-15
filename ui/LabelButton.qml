import QtQuick
import QtQuick.Controls

Rectangle {
    property alias text: label.text
    height: label.implicitHeight
    Label {
        id: label
        color: "white"
    }
}
