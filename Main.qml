import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import com.nilbogshideout.kobold

ApplicationWindow {
    width: 400
    height: 400
    visible: true

    color: Colors.background
    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        Sidebar {
            Layout.fillHeight: true
            implicitWidth: 200
        }
    }
}
