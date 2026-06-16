import QtQuick
import QtQuick.Controls
import com.nilbogshideout.kobold

Button {
    id: control
    state: "DEFAULT"
    property bool selected: false
    implicitWidth: implicitHeight

    onClicked: {
        selected = !selected;
    }

    contentItem: Label {
        text: control.text
        horizontalAlignment: Text.AlignHCenter
    }
    background: Rectangle {
        id: highlight
        radius: 5
        anchors.fill: parent
    }

    states: [
        State {
            name: "DEFAULT"
            when: !control.selected
            PropertyChanges {
                highlight.color: Colors.surface
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
