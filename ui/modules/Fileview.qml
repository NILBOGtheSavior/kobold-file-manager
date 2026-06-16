import QtQuick
import com.nilbogshideout.kobold

TableView {
    ListModel {
        id: fileModel
        ListElement {
            permissions: ".rw-r--r--"
            owner: "nilbog"
            size: "5.0 MB"
            date: "Sun Jun  7 12:54:35 2026"
            icon: "\uf008"
            name: "2026-06-07 12-54-11.mp4"
        }
        ListElement {
            permissions: "drwxr-xr-x"
            owner: "nilbog"
            size: "4.0 KB"
            date: "Sun May 31 21:55:55 2026"
            icon: "\uf115"
            name: "bog-os"
        }
        ListElement {
            permissions: ".rw-r--r--"
            owner: "nilbog"
            size: "36 KB"
            date: "Sun Jun  7 12:18:25 2026"
            icon: "\uf1c5"
            name: "chat_server.png"
        }
        ListElement {
            permissions: "drwxr-xr-x"
            owner: "nilbog"
            size: "12 KB"
            date: "Tue Jun 16 00:39:58 2026"
            icon: "\uf115"
            name: "Downloads"
        }
        ListElement {
            permissions: "drwxr-xr-x"
            owner: "nilbog"
            size: "4.0 KB"
            date: "Fri Feb 13 02:01:05 2026"
            icon: "\uf115"
            name: "godot"
        }
        ListElement {
            permissions: "lrwxrwxrwx"
            owner: "nilbog"
            size: "20 B"
            date: "Sat Jan  3 17:19:05 2026"
            icon: "\uf14c"
            name: "Music => /mnt/barracuda/Music"
        }
        ListElement {
            permissions: ".rwxr-xr-x"
            owner: "nilbog"
            size: "4.0 KB"
            date: "Thu Feb 19 17:53:43 2026"
            icon: "\uf489"
            name: "notify_test.sh"
        }
        ListElement {
            permissions: "drwxr-xr-x"
            owner: "nilbog"
            size: "4.0 KB"
            date: "Sat Jun 13 03:18:07 2026"
            icon: "\uf115"
            name: "Repositories"
        }
    }

    columnSpacing: 1
    rowSpacing: 1
    clip: true

    model: fileModel

    delegate: Label {
        id: delegate
        required property var modelData
        text: `${modelData.icon} ${modelData.name}`
    }
}
