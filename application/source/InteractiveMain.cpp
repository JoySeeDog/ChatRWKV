//
// Created by diwa on 2023/3/21.
//

#include <QDebug>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QJsonDocument>
#include <QJsonObject>
#include "InteractiveMain.h"
#include "ChatListDefine.h"
#include "ChatListModel.h"

InteractiveMain::InteractiveMain(QObject *parent)
: QObject(parent)  {
    qmlRegisterType<ChatData>("ChatModel", 1, 0, "ChatData");
    qmlRegisterType<ChatListModel>("ChatModel", 1, 0, "ChatListModel");
}

void InteractiveMain::sendMessage(const QString &message) {
    if(!m_requestFinished) {
        return;
    }
    m_networkRequest = std::make_shared<ChatNetworkRequest>();
    QUrl url("http://localhost:8000");
    QUrlQuery params;
    params.addQueryItem("tokenCount", QString::number(m_tokenCount));
    params.addQueryItem("temperature", QString::number(m_temperature));
    params.addQueryItem("topP", QString::number(m_topP));
    params.addQueryItem("presencePenalty", QString::number(m_presencePenalty));
    params.addQueryItem("countPenalty", QString::number(m_countPenalty));
    m_networkRequest->sendGetRequest(url, params);
    m_requestFinished = false;
    auto request = m_networkRequest.get();
    QObject::connect(request, &ChatNetworkRequest::responseReceived, this, [this](const QByteArray &data) {
//        QJsonDocument jsonDocument = QJsonDocument::fromJson(data);
//        QJsonObject rootObject = jsonDocument.object();
        QString message = QString(data);
        emit sigReceivedChatMessage(message);
        m_requestFinished = true;
        qDebug() << "message is:" << message;
    });

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


