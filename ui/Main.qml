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
        ColumnLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Toolbar {
                Layout.fillWidth: true
                implicitHeight: 20
            }
            Fileview {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            Statusbar {
                implicitHeight: 20
            }
        }
    }
}
