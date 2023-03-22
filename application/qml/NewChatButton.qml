import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 150
    height: 40
    radius: 5
    border.color: "white"
    border.width: 1
//    color: "#202103"
    color: "#5E5FF6"
    signal sigClickButton()
    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: sigClickButton()
    }

    Text {
        anchors.centerIn: parent
        text: "+   New chat"
        color: "white"
        font.pixelSize: 14
    }
}