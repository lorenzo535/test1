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
            Rectangle { color: "red"; width: 230; height: 230 }
            Rectangle { color: "yellow"; width: 230; height: 230 }
            Rectangle { color: "green"; width: 230; height: 230 }
            Rectangle { color: "blue"; width: 230; height: 230 }
            Rectangle { color: "white"; width: 230; height: 230 }
            Rectangle { color: "pink"; width: 230; height: 230 }

        }

    }
}
