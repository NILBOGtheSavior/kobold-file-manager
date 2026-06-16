import QtQuick
import com.nilbogshideout.kobold

Rectangle {
    property alias text: label.text
    height: label.implicitHeight
    Label {
        id: label
        color: Colors.foreground
    }
}
