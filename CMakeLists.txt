cmake_minimum_required(VERSION 3.16)

project(kobold VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 COMPONENTS Quick REQUIRED)

qt_standard_project_setup()

qt_add_executable(kobold
    main.cpp
)

qt_add_qml_module(kobold
    URI hello
    QML_FILES
        main.qml
    RESOURCES
        img/logo.png
)

target_link_libraries(kobold PRIVATE Qt6::Quick)
