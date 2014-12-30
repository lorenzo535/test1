import QtQuick 2.1
import "."
Item {
    property bool local_enable: false
    id: pageSailing    
    GlobalConsts {id: appsGlobalConsts}

    Row
    {
        spacing: 2

        WindInstrument {id: theWindInstrument }

        Grid {
            columns: 2
            spacing: 4
            DisplayElement { idAcronym: "HDG"; value: 75.2 }
            DisplayElement { idAcronym: "SPD"; value: 4.2 }
            DisplayElement { idAcronym: "COG"; value: 73.2 }
            DisplayElement { idAcronym: "TWA"; value: 56.7 }
            DisplayElement { idAcronym: "TWS"; value: 5.2 }
            DisplayElement { idAcronym: "TRP"; value: 23.2 }

        }
    }


}
