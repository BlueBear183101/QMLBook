import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id : rect1
        x: 12; y: 12
        width: 76; height: 96
        color: "lightsteelblue"

        MouseArea {
            id: area
            width: parent.width
            height: parent.height
            onClicked: react2.visible = !react2.visible
        }
    }

    Rectangle {
        id: react2
        x: 112; y: 12
        width: 75; height: 96
        border.color: "lightsteelblue"
        border.width: 5
        radius: 8
    }
    Rectangle {
        id: react3
        x: 12
        y: 200
        width: 176; height: 96
        gradient: Gradient {
            GradientStop { position: 0.0; color: "lightsteelblue" }
            GradientStop { position: 1.0; color: "seashell" }
        }
        border.color: "slategray"
    }
    Text {
        x: 200
        text: "The quick brown fox"
        color :"#303030"
        font.family: "Ubuntu"
        font.pixelSize: 28
    }

    Rectangle {
        id: react4
        x: 200; y:200
        border.color: "black"
        width: 200
        height: 200

        // Rectangle {
        //     id: button
        //     y: 12
        //     anchors.horizontalCenter: parent.horizontalCenter
        //     width: 150; height: 26
        //     color: "lightsteelblue"
        //     border.color: "slategray"

        //     Text {
        //         id: label
        //         anchors.centerIn: parent
        //         text: "Start"
        //         font.family: "Ubuntu"
        //         font.pixelSize: 14
        //     }

        //     MouseArea {
        //         anchors.fill: parent
        //         onClicked: {
        //             status.text = "Button Clicked!"
        //         }
        //     }
        // }
        Button {
            id: button
            y: 12
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Start"
            onClicked: {
                status.text = "Button Clicked!"
            }
        }

        Text {
            id: status
            y: react4.height / 2
            width: 116; height: 26
            anchors.horizontalCenter: react4.horizontalCenter
            text: "Waiting..."
            font.family: "Ubuntu"
            font.pixelSize: 22
        }
    }
}
