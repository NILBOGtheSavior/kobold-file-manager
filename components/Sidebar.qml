import QtQuick
import QtQuick.Controls
import com.nilbogshideout.kobold

Rectangle {
    color: Colors.surface
    radius: 5
    ListView {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Label {
            text: "Kobold File Manager"
        }

        model: 5
        delegate: LabelButton {
            required property var modelData
            text: "File " + modelData
        }
    }
}
