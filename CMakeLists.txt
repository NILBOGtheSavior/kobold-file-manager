cmake_minimum_required(VERSION 3.16)

project(kobold VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(QT_QML_GENERATE_QMLLS_INI ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick Core Qml )

qt_standard_project_setup()

qt_add_executable(kobold
    main.cpp
)

qt_policy(SET QTP0001 NEW)

set_source_files_properties(config/Colors.qml
    PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

qt_add_qml_module(kobold
    URI com.nilbogshideout.kobold
    QML_FILES
        Main.qml
        ui/LabelButton.qml
        ui/NavigationButton.qml
        components/Sidebar.qml
        components/Toolbar.qml
        components/Statusbar.qml
        components/Fileview.qml
        config/Colors.qml
    RESOURCES
        img/logo.png
)

target_link_libraries(kobold PRIVATE Qt6::Quick)
