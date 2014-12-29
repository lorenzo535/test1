import QtQuick 2.1

Item {
    property bool local_enable: false
    id: pageInfos
    Rectangle
    {
        property bool flip: false
        id: butt1
        width: 20
        height: 30
        x : 100
        y: 100
        color : flip ? "pink" : "black"
        MouseArea {
            anchors.fill: parent
            onClicked: butt1.flip=!butt1.flip
            enabled: local_enable
        }
        Text {
            x : 200
            y: 100
            text: "this is page Infos"
        }
    }
}
