import QtQuick 2.1
import QtQuick.Window 2.0

Window {
    visible: true
    width: 360
    height: 360

    property bool flip:false

    Rectangle {
        visible : true
        width: 100
        height: 100
        color: Qt.red
    }

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            Qt.quit();
//        }
//    }

    Rectangle {
        id: flashingblob
        width: 75; height: 75
        color: "grey"
        opacity: 1.0

        states: [
            State {
                name: "off"
                when: !flip
                PropertyChanges {target: flashingblob; color:"black"}
            },
            State {
                name: "on"
                when: flip
                PropertyChanges {target: flashingblob; color:"blue"}
            }

        ]

        MouseArea {
            anchors.fill: parent
            onClicked: flip = !flip

        }


    }


    Text {
        text: "Hello World"
        anchors.centerIn: parent
        visible: flip

    }
}
