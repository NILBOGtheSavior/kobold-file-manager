import QtQuick
import QtQuick.Controls
import com.nilbogshideout.kobold

Rectangle {

    ListModel {
        id: sidebarModel
        ListElement {
            name: "Home"
            path: "/home/nilbog"
            icon: "folder-home"
        }
        ListElement {
            name: "Root"
            path: "/"
            icon: "drive-harddisk"
        }
        ListElement {
            name: "Downloads"
            path: "/home/nilbog/Downloads"
            icon: "folder-download"
        }
        ListElement {
            name: "USB Drive"
            path: "/run/media/usb"
            icon: "drive-removable-media"
        }
        ListElement {
            name: "Server"
            path: "ssh://home-server"
            icon: "network-server"
        }
    }

    color: Colors.surface
    radius: 5
    clip: true
    ListView {
        anchors.fill: parent
        model: sidebarModel
        delegate: navigationDelagate
    }

    Component {
        id: navigationDelagate
        Button {
            id: control
            required property var modelData
            text: modelData.name
            state: "DEFAULT"
            property bool selected: false

            anchors.left: parent.left
            anchors.right: parent.right

            onClicked: {
                selected = !selected;
            }

            contentItem: Text {
                text: control.text
                font.family: "BlexMono Nerd Font"
                font.pointSize: 12
                color: Colors.foreground
            }
            background: Rectangle {
                id: highlight
                anchors.fill: parent
                color: Colors.background
            }

            states: [
                State {
                    name: "DEFAULT"
                    when: !control.selected
                    PropertyChanges {
                        highlight.color: "transparent"
                    }
                },
                State {
                    name: "SELECTED"
                    when: control.selected
                    PropertyChanges {
                        highlight.color: Colors.hover
                    }
                }
            ]
        }
    }
}
