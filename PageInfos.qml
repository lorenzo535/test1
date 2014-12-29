import QtQuick 2.1

Item {
    property bool local_enable: false
    id: pageInfos
    Grid {
        columns: 5
        spacing: 4
        DisplayElement { idAcronym: "TMP"; value: 41.2 ; unit: "°C"}
        DisplayElement { idAcronym: "TMP2"; value: 45.2; unit: "°C"}
        DisplayElement { idAcronym: "RPM"; value: 1008; decimal: false }
        DisplayElement { idAcronym: "FUE"; value: 23; decimal: false; unit: "%" }
        DisplayElement { idAcronym: "HRS"; value: 123.4; unit:"h" }
        DisplayElement { idAcronym: "TRP"; value: 23.2; unit:"h" }

        DisplayElement { idAcronym: "HDG"; value: 75.2; unit:"°" }
        DisplayElement { idAcronym: "SPD"; value: 4.2 ; unit:"Kn"}
        DisplayElement { idAcronym: "COG"; value: 73.2 ; unit:"°"}
        DisplayElement { idAcronym: "TWA"; value: 56.7; unit:"°" }
        DisplayElement { idAcronym: "TWS"; value: 5.2; unit:"Kn" }
        DisplayElement { idAcronym: "TRP"; value: 23.2 ; unit:"Nm"}

        DisplayElement { idAcronym: "BAT"; value: 56.7; unit:"V" }
        DisplayElement { idAcronym: "BAT"; value: 5.2 ; unit:"A"}
        DisplayElement { idAcronym: "XTE"; value: 101.2 ; unit:"m"}

    }
}
