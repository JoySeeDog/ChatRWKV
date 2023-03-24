//
// Created by diwa on 2023/3/21.
//

#include <QDebug>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "InteractiveMain.h"
#include "ChatListDefine.h"
#include "ChatListModel.h"

InteractiveMain::InteractiveMain(QObject *parent)
: QObject(parent)  {
    qmlRegisterType<ChatData>("ChatModel", 1, 0, "ChatData");
    qmlRegisterType<ChatListModel>("ChatModel", 1, 0, "ChatListModel");
}

void InteractiveMain::sendMessage(const QString &message) {
    emit sigReceivedChatMessage(message);
}

void InteractiveMain::updateTokenCount(int tokenCount) {
    qDebug() << "updateTokenCount is:" << tokenCount;
    m_tokenCount = tokenCount;
}
void InteractiveMain::updateTemperature(int temperature) {
    qDebug() << "updateTemperature is:" << temperature;
    m_temperature = temperature;
}
void InteractiveMain::updateTopP(int topP) {
    qDebug() << "updateTopP is:" << topP;
    m_topP = topP;
}
void InteractiveMain::updatePresencePenalty(int presencePenalty) {
    qDebug() << "updatePresencePenalty is:" << presencePenalty;
    m_presencePenalty = presencePenalty;
}
void InteractiveMain::updateCountPenalty(int countPenalty) {
    qDebug() << "updateCountPenalty is:" << countPenalty;
    m_countPenalty = countPenalty;
}


