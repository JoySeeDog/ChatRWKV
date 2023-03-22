import QtQuick 2.14
import QtQuick.Controls 2.2
import "Style.js" as JsStyle

Rectangle{
    id: interactive
    width: 240
    height: 250
    clip: true
    color: "white"

    Component.onCompleted: {
        paramAreaLoader.sourceComponent = writting
    }

    Loader {
        id: paramAreaLoader
        anchors.fill: parent
        function getComponent(type){

        }

        Component {
            id: chat
            Chat{}
        }

        Component {
            id: writting
            Writing{}
        }

    }
}
