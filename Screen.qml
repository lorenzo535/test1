import QtQuick 2.1

import "."

Item {
    id: screen
    property string color: "red"    
    property string title: "title"
    property bool controls_enabled: false
    opacity: 1    

    function hide() {
        screen.state = 'hide';
        screen.x = 0;
        controls_enabled = false;
    }

    function show(xVal) {        
        screen.x = xVal;        
        screen.state  = 'show';
        controls_enabled = true;
    }

    Rectangle {
        id: rect
        width: container.width
        height: container.height
        //anchors.centerIn: screen
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
