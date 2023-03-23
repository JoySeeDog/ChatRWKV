import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 1.4 as Ctrl1
import QtQuick 2.2
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

import QtMultimedia 5.12
import TalkModel 1.0

Rectangle {
    visible: true
    width: 720
    height: 820

//    id: rootItem
//    width: parent.width
//    height: parent.height

    TalkListModel{
        id: talk_model
        onModelReset: {
            update_timer.start();
        }
        onRowsInserted: {
            update_timer.start();
        }
    }

    Timer{
        id: update_timer
        interval: 0
        repeat: false
        onTriggered: {
            //对应版本Qt5.13.1
            //positionViewAtEnd有问题，新增的大小受上次最后一项大小的影响
            //如果上次更短就没法滑倒底部
            //talk_view.positionViewAtEnd();
            talk_view.currentIndex=talk_view.count-1;
        }
    }

    Ctrl1.SplitView{
        anchors.fill: parent
        anchors.margins: 10
        orientation: Qt.Vertical
        handleDelegate: Rectangle{
            height: 10
        }

        Rectangle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 4
            border.color: "gray"
            color: "#EEEEEE"
            //消息列表
            ChatList{
                id: talk_view
                anchors.fill: parent
                anchors.margins: 10
                model: talk_model
                talkModel: talk_model
            }
        }

        Rectangle{
            height: 220
            Layout.fillWidth: true
            radius: 4
            border.color: "gray"
            Row{
                x: 10
                y: 10
                spacing: 10
                //数据类型
                ComboBox{
                    id: send_type
                    model: ["text","audio"]
                    currentIndex: 0
                }
                //清空
                Button{
                    text: "Clear"
                    onClicked: {
                        text_area.clear();
                        talk_model.clearModel();
                    }
                }
            }

            //文本编辑框
            TextArea{
                id: text_area
                text: "龚建波 1992 测试！啊实打实打算"+
                      "asdasasd啊实打实大苏打啊实打实"+
                      "啊实打实大苏打按时大苏20210329"
                anchors {
                    fill: parent
                    leftMargin: 10
                    rightMargin: 10
                    topMargin: 60
                    bottomMargin: 60
                }

                font{
                    family: "Microsoft YaHei"
                    pixelSize: 14
                }
                selectByMouse: true

                wrapMode: TextInput.WrapAnywhere


            }
            //A发送
            Button{
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.margins: 10
                text: "A Send"
                onClicked: {
                    switch(send_type.currentText){
                    case "text":
                        if(true){ //M115
                            if(text_area.text.length<1)
                                return;
                            talk_model.appendText("B","A",text_area.text);
                        }break;
                    case "audio":
                        if(true){
                            talk_model.appendAudio("B","A");
                        }break;
                    }
                }
            }//end Button
            //B发送
            Button{
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: 10
                text: "B Send"
                onClicked: {
                    switch(send_type.currentText){
                    case "text":
                        if(true){ //M115
                            if(text_area.text.length<1)
                                return;
                            talk_model.appendText("B","B",text_area.text);
                        }break;
                    case "audio":
                        if(true){
                            talk_model.appendAudio("B","B");
                        }break;
                    }
                }
            }//end Button
        }
    }
}
