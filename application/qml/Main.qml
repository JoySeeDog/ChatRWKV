//import QtQuick 2.15

//Rectangle {
//    width: 1152
//    height: 720
//    color: "red"
//}


import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    width: 1152
    height: 720
    visible: true
    title: qsTr("ChatRWKV")

    Rectangle {
        id:leftTab
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: "#5E5FF6"

        NewChatButton {
            id: chatButton
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            onSigClickButton: {
                console.log("Clicked button")
            }
        }

        Component.onCompleted: {
              leftTab.width = chatButton.width + 20;
          }

    }

    InteractiveWindow {
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: leftTab.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
    }

//    TabBar {
//        id: bar
//        anchors.top: chatButton.bottom
//        width: parent.width
//        TabButton {
//            text: qsTr("Home")
//        }
//        TabButton {
//            text: qsTr("Discover")
//        }
//        TabButton {
//            text: qsTr("Activity")
//        }
//    }

//    StackLayout {
//        width: parent.width
//        currentIndex: bar.currentIndex
//        Item {
//            id: homeTab
//            Rectangle {
//                color: "red"
//                anchors.fill: parent
//            }
//        }
//        Item {
//            id: discoverTab
//            Rectangle {
//                color: "blue"
//                anchors.fill: parent
//            }
//        }
//        Item {
//            id: activityTab
//            Rectangle {
//                color: "green"
//                anchors.fill: parent
//            }
//        }
//    }
}





