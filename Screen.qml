import QtQuick 2.1

Item {
    id: screen
    property string color: "red"    
    property string title: "title"
    opacity: 1    

    function hide() {
        screen.state = 'hide';
        screen.x = 0;
    }

    function show(xVal) {        
        screen.x = xVal;        
        screen.state  = 'show';
    }

    Rectangle {
        id: rect
        width: 480
        height: 640
        color:  screen.color
    }

    Text {
        id: title
        text: screen.title;
    }

    states: [
             State {
                 name: "show"
                 PropertyChanges {
                     target: screen
                     x: 0
                     opacity:1
                 }
             },
             State {
                 name: "hide"
                 PropertyChanges {
                     target: screen
                     opacity:0
                 }
             }
         ]

    transitions: [             
             Transition {
                 from:"hide"
                 to:"show"
                 NumberAnimation { properties: "x"; duration:500}                 
                 NumberAnimation { properties: "opacity"; duration: 700 }
             },
             Transition {
                 //from: "show"
                 to: "hide"
                 NumberAnimation { properties: "opacity"; duration: 700 }
             }
         ]
}
