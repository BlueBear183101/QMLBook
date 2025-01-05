import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: label
        x: 24; y:24

        // custom counter property for space presses
        property int spacePresses: 0

        text: "Space presses: " + spacePresses + " times"

        // (1) handler for text changes
        onTextChanged: console.log("text changed to: ", text)

        // need focus to receive key events
        focus: true

        // (2) handler with some JS
        Keys.onSpacePressed: {
            increment()
        }

        // clear the text on escape
        Keys.onEscapePressed: {
            label.text = ''
        }

        // (3) a JS function
        function increment() {
            spacePresses = spacePresses + 1
        }
    }
}
