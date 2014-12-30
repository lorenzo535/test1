import QtQuick 2.0
import "."
Rectangle {
    id: gauge
    GlobalConsts{id: appsGlobalConsts}
    property real windangle: 0.0
    height: appsGlobalConsts.globalHeight
    width: appsGlobalConsts.mainGaugeWidth
    color: "transparent"
    Image {
        id: dial
         source: "images/windgauge.svg"
         height: parent.height
         width: parent.width
    }
    Image {
        source: "images/arm.svg"
        id: thearm
        height: 46
        width: 260
        anchors.left: dial.horizontalCenter
        anchors.verticalCenter: dial.verticalCenter
        transform: Rotation { id: therot; origin.y: thearm.height/2; angle: windangle - 90.0}
    }

    Image {
        source: "images/knob.svg"
        height: 80
        width: 80
        anchors.centerIn: dial

    }

    NumberAnimation on windangle { from : 0; to: 180.0; duration: 4000 ; loops: Animation.Infinite}
}

