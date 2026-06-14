import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 400
    height: 400
    visible: true

    color: "#1D2230"

    ColumnLayout {
        width: 500
        Layout.fillHeight: true
        Repeater {
            model: 3
            Button {
                id: button

                required property var modelData
                text: "A Special Button"
                background: Rectangle {
                    Layout.fillWidth: true
                    implicitHeight: 40
                    color: button.down ? "#394260" : "transparent"
                    border.color: "#26282a"
                    border.width: 1
                    radius: 4
                }
                onClicked: {
                    console.log("hello world " + modelData);
                }
            }
        }
    }
}
