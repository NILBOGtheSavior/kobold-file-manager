import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import com.nilbogshideout.kobold

RowLayout {
    spacing: 5
    NavigationButton {
        text: ""
    }
    NavigationButton {
        text: ""
    }
    NavigationButton {
        text: ""
    }
    Button {
        id: control
        Layout.fillWidth: true
        text: "/home/nilbog/"

        background: Rectangle {
            radius: 5
            color: Colors.surface
            anchors.fill: parent
        }
        contentItem: Text {
            text: control.text
            font.family: "BlexMono Nerd Font"
            font.pointSize: 12
            color: Colors.foreground
        }
    }
    NavigationButton {
        text: "󰍜"
    }
}
