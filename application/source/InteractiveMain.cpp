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

void InteractiveMain::clearModel() {
    qDebug() << "Received message from QML:" << "clearModel";
}

void InteractiveMain::sendMessage(const QString &message) {
    emit sigReceivedChatMessage(message);
    qDebug() << "Received message from QML:" << message;
}

