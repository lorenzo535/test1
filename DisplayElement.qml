import QtQuick 2.0
import "."

Rectangle {
    GlobalConsts {id: appsGlobalConsts}
    width: appsGlobalConsts.buttonWidth
    height: appsGlobalConsts.buttonHeight
    property string idAcronym: "EMP"
    property real value: 0.0
    property string unit: ""
    property bool decimal: true
    Colors {id: appColors}
    color: appColors.nightDataBackground
    border {color: appColors.nightBorder; width: 3}


        Text {
            font.family: "FreeSans";
            font.pointSize: 22;
            font.bold: true
            id: labelID
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            transform: Translate {y: 8}
            text: idAcronym
            color: appColors.nightBright
        }

        Text {
            font.family: "FreeSans";
            font.pointSize: 48;
            font.bold: true
            id: mainValue
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            transform: Translate {y: -2}
            text: value.toFixed().toString()
            color: appColors.nightBright
        }
        Text {
            font.family: "FreeSans";
            font.pointSize: 32;
            font.bold: true
            id: decimalValue
            visible : decimal
            anchors.bottom: parent.bottom
            anchors.left: mainValue.right
            transform: Translate {y: -2}
            property int tempint: value
            text: (value-tempint).toString().slice(1,3);
            color: appColors.nightBright
        }
        Text {
            font.family: "FreeSans";
            font.pointSize: 24;
            font.bold: true
            id: unitDisplay
            visible : decimal
            anchors.bottom: parent.bottom
            anchors.left: decimal? decimalValue.right : mainValue.right
            transform: Translate {y: -2}
            text: unit
            color: appColors.nightBright
        }



}
