import QtQuick 2.1
import QtQuick.Window 2.0
import "."

Window {
    visible: true
    width: 480
    height: 640


Rectangle {
    id: container
    width: 480
    height: 640
    //rotation: 90
    anchors.centerIn: parent
    property int currentScreen: 0
    property int previousScreen: 0

    //creating array of screens
    property list<Item> screens: [
    Screen {
            parent: container
            id: firstScreen
            title:"First Screen"
            color: "blue"
            PageSail{}
        },
        Screen {
            parent: container
            id: secondScreen
            title:"Second Screen"
            color: "red"
            PageMotor{}
        },
        Screen {
            parent: container
            id:thirdScreen
            title:"Third Screen"
            color:"green"
            PageDIO{}
        },
        Screen {
            parent: container
            //anchors.fill: parent
            id:fourthScreen
            title:"Fourth Screen"
            color:"orange"
            PageInfos{}
        }
        ]

    Component.onCompleted: {
           console.log("Startup script");
           container.currentScreen = 0;
           container.previousScreen = 0;
           for(var i=0; i < 4; ++i) {
           screens[i].hide();
       }
       screens[0].show(0);
    }

   // function to show particular view
    function showScreen(screenNo,direction) {
      screens[previousScreen].hide();
       var xVal = direction == -1 ? 400 : -400;
       screens[screenNo].show(xVal);
    }
    
    // function to switch view on swipe
    function onLeftSwipe() {
        previousScreen = currentScreen;
        currentScreen = currentScreen +1;
        if(currentScreen > 3 ) {
            currentScreen = 0;
        }
        showScreen (currentScreen,-1)  ;
    }

    function onRightSwipe() {
        previousScreen = currentScreen;
        currentScreen = currentScreen -1;
        if(currentScreen < 0 ) {
            currentScreen = 3;
        }
        showScreen (currentScreen,1)  ;
    }

    // swipe detection code
    MouseArea {
        id: mouseArea
        anchors.fill: parent;

        property int oldX: 0
        property int oldY: 0

      onPressed: {
        oldX = mouseX;
        oldY = mouseY;
      }

      onReleased: {
          var xDiff = oldX - mouseX;
          var yDiff = oldY - mouseY;
          if( Math.abs(xDiff) > Math.abs(yDiff) ) {
              if( oldX > mouseX) {
                    container.onLeftSwipe();
              } else {
                    container.onRightSwipe();
              }
          } else {
              if( oldY > mouseY) {/*up*/ }
              else {/*down*/ }
          }
       }

    }
    }
}
