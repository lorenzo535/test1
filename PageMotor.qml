import QtQuick 2.1

Item {
    property bool local_enable: false
    id: pageMotor
    GlobalConsts {id: appsGlobalConsts}

    Row{
        spacing: 4
        Image {
             source: "images/rpmgauge.svg"
             height: appsGlobalConsts.globalHeight
             width: appsGlobalConsts.mainGaugeWidth
        }


        Grid {
            columns: 2
            spacing: 4
            DisplayElement { idAcronym: "TMP"; value: 75.2 }
            DisplayElement { idAcronym: "TMP2"; value: 4.2 }
            DisplayElement { idAcronym: "RPM"; value: 73.2 }
            DisplayElement { idAcronym: "FUE"; value: 56.7 }
            DisplayElement { idAcronym: "HRS"; value: 5.2 }
            DisplayElement { idAcronym: "TRP"; value: 23.2 }

        }

    }
}
