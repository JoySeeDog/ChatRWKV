
import QtQuick 2.2
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

Rectangle {
    id: rootItem
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width / 2 -10
        height: parent.height - 2
        anchors.top:parent.top
        anchors.topMargin : 8
        border.color: "#E5E7EB"
        border.width: 1

        Column {
            spacing: 4
            width: parent.width
            CustomText {
                id: prompt
                text: "Prompt"
                height:20
                color: "#6B7280"
                anchors.top:parent.top
                anchors.topMargin : 8
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10
            }
            MultipleLineInput {
                id: multipleLine
                width: parent.width
                height: 208
                anchors.top: prompt.bottom
                anchors.topMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10
                border.width: 1
                text: "Here's a short cyberpunk sci-fi adventure story. The story's main character is an artificial human created by a company called OpenBot.

The Story:"
            }

            Rectangle {
                id:tokenCount
                anchors.top: multipleLine.bottom
                anchors.topMargin: 10
                width: parent.width
                height: 65
                border.color: "#E5E7EB"
                border.width: 1

                CustomText {
                    id: tokenCountLabel
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    text: "token_count"
                    height:20
                }

                NumberInput {
                   id:tokenCountInput
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.verticalCenter: tokenCountLabel.verticalCenter
                    valueStep: 10
                    maxValue: 200
                    minValue: 10
                    doubleFixed: 1
                    value: 150
                     onSigValueChanged: {
                         tokenCountValueSlider.blockSignal(true)
                         tokenCountValueSlider.setValue(value)
                         tokenCountValueSlider.blockSignal(false)
                      }
                  }

                CustomSlider {
                    id: tokenCountValueSlider
                    anchors.top: tokenCountLabel.bottom
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10

                    handleBarHeight: 8
                    handleHeight:16
                    handleWidth: 16
                    handleColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    backgroundColor:Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    from: 10
                    to: 200
                    stepSize: 10
                    value: 150
                    orientation: Qt.Horizontal

                    onSigValueChanged: {
                        tokenCountInput.blockSignal(true)
                        tokenCountInput.setValue(value)
                        tokenCountInput.blockSignal(false)
                    }
                }
            }

            Rectangle {
                id:temperature
                anchors.top: tokenCount.bottom
                width: parent.width
                height: 65

                CustomText {
                    id: temperatureLabel
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    text: "temperature"
                    height:20
                }

                NumberInput {
                   id:temperatureInput
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.verticalCenter: temperatureLabel.verticalCenter
                    valueStep: 0.1
                    maxValue: 2
                    minValue: 0.2
                    doubleFixed: 1
                    value: 1
                     onSigValueChanged: {
                         temperatureValueSlider.blockSignal(true)
                         temperatureValueSlider.setValue(value)
                         temperatureValueSlider.blockSignal(false)
                      }
                  }

                CustomSlider {
                    id: temperatureValueSlider
                    anchors.top: temperatureLabel.bottom
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10

                    handleBarHeight: 8
                    handleHeight:16
                    handleWidth: 16
                    handleColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    backgroundColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    from: 0.2
                    to: 2
                    stepSize: 0.1
                    value: 1
                    orientation: Qt.Horizontal

                    onSigValueChanged: {
                        temperatureInput.blockSignal(true)
                        temperatureInput.setValue(value)
                        temperatureInput.blockSignal(false)
                    }
                }
            }

            Rectangle {
                id:topP
                anchors.top: temperature.bottom
                width: parent.width
                height: 65
                border.color: "#E5E7EB"
                border.width: 1

                CustomText {
                    id: topPLabel
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    text: "top_p"
                    height:20
                }

                NumberInput {
                   id:topPInput
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.verticalCenter: topPLabel.verticalCenter
                    valueStep: 10
                    maxValue: 100
                    minValue: 0
                    doubleFixed: 0
                    value: 80
                     onSigValueChanged: {
                         topPValueSlider.blockSignal(true)
                         topPValueSlider.setValue(value)
                         topPValueSlider.blockSignal(false)
                         //需要除100

                      }
                  }

                CustomSlider {
                    id: topPValueSlider
                    anchors.top: topPLabel.bottom
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10

                    handleBarHeight: 8
                    handleHeight:16
                    handleWidth: 16
                    handleColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    backgroundColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    from: 0
                    to: 100
                    stepSize: 10
                    value: 80
                    orientation: Qt.Horizontal
                    onSigValueChanged: {
                        topPInput.blockSignal(true)
                        topPInput.setValue(value)
                        topPInput.blockSignal(false)
                        //需要除100

                    }
                }
            }


            Rectangle {
                id:presencePenalty
                anchors.top: topP.bottom
                width: parent.width
                height: 65

                CustomText {
                    id: presencePenaltyLabel
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    text: "presencePenalty"
                    height:20
                }

                NumberInput {
                   id:presencePenaltyInput
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.verticalCenter: presencePenaltyLabel.verticalCenter
                    valueStep: 10
                    maxValue: 100
                    minValue: 0
                    doubleFixed: 0
                    value: 10
                     onSigValueChanged: {
                         presencePenaltyValueSlider.blockSignal(true)
                         presencePenaltyValueSlider.setValue(value)
                         presencePenaltyValueSlider.blockSignal(false)
                         //需要除100

                      }
                  }

                CustomSlider {
                    id: presencePenaltyValueSlider
                    anchors.top: presencePenaltyLabel.bottom
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10

                    handleBarHeight: 8
                    handleHeight:16
                    handleWidth: 16
                    handleColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    backgroundColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    from: 0
                    to: 100
                    stepSize:  10
                    value: 10
                    orientation: Qt.Horizontal

                    onSigValueChanged: {
                        presencePenaltyInput.blockSignal(true)
                        presencePenaltyInput.setValue(value)
                        presencePenaltyInput.blockSignal(false)
                        //需要除100
                    }
                }
            }


            Rectangle {
                id:countPenalty
                anchors.top: presencePenalty.bottom
                width: parent.width
                height: 65
                border.color: "#E5E7EB"
                border.width: 1

                CustomText {
                    id: countPenaltyLabel
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    text: "countPenalty"
                    height:20
                }

                NumberInput {
                   id:countPenaltyInput
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.verticalCenter: countPenaltyLabel.verticalCenter
                    valueStep: 10
                    maxValue: 100
                    minValue: 0
                    doubleFixed: 0
                    value: 10
                     onSigValueChanged: {
                         countPenaltyValueSlider.blockSignal(true)
                         countPenaltyValueSlider.setValue(value)
                         countPenaltyValueSlider.blockSignal(false)
                         //需要除100
                      }
                  }

                CustomSlider {
                    id: countPenaltyValueSlider
                    anchors.top: countPenaltyLabel.bottom
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    handleBarHeight: 8
                    handleHeight:16
                    handleWidth: 16
                    handleColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    backgroundColor: Qt.rgba(89.0 / 255, 80.0 / 255, 249.0 / 255, 1)
                    from: 0
                    to: 100
                    stepSize: 10
                    value: 10
                    orientation: Qt.Horizontal
                    onSigValueChanged: {
                        countPenaltyInput.blockSignal(true)
                        countPenaltyInput.setValue(value)
                        countPenaltyInput.blockSignal(false)
                        //需要除100

                    }
                }
            }

            Row {
                anchors.top: tokenCountValueSlider.bottom
                anchors.topMargin: 8

                Button {
                    id: clearButton
                    text: "清除"
                    background: Rectangle{
                        color: "#666666"
                        border.width: 1
                        border.color: "#C4C4C4"
                    }

                }
                Button {
                    id: submitButton
                    text: "提交"
                    background: Rectangle{
                        color: "#666666"
                        border.width: 1
                        border.color: "#C4C4C4"
                    }
                }

            }


        }

    }


}
