import QtQuick

Item {
    id: root
    width: 116; height: 26
    // export button properties
    property alias text: label.text
    signal clicked

    Rectangle {
        anchors.fill: parent
        color: "lightsteelblue"
        border.color: "slategray"

        Text {
            id: label
            anchors.centerIn: parent
            text: "Start"
            font.family: "Ubuntu"
            font.pixelSize: 14
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                status.text = "Button Clicked!"
            }
        }
    }
}
