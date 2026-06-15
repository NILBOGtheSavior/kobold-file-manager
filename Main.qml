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
            model: 6
            delegate: LabelButton {
                text: "Hello world!"
            }
        }
    }
}
