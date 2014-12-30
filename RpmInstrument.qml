import QtQuick 2.0

import QtQuick 2.0

Rectangle {
    id: gaugerpm
    GlobalConsts{id: appsGlobalConsts}
    property real rpm: 0.0
    property real rpmangle: (rpm * 250.0/4000) + 145.0
    height: appsGlobalConsts.globalHeight
    width: appsGlobalConsts.mainGaugeWidth
    color: "transparent"
    Image {
        id: dial
         source: "images/rpmgauge.svg"
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
        transform: Rotation { id: therot; origin.y: thearm.height/2; angle: rpmangle }
    }

    Image {
        source: "images/knob.svg"
        height: 80
        width: 80
        anchors.centerIn: dial

    }

    NumberAnimation on rpm { from : 0; to: 4000.0; duration: 4000 ; loops: Animation.Infinite}


}


