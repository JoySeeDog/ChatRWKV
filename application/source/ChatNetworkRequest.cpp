//
// Created by diwa on 2023/3/24.
//

// ChatNetworkRequest.cpp
#include "ChatNetworkRequest.h"

#include <QNetworkRequest>
#include <QNetworkReply>
#include <QUrl>
#include <QEventLoop>

ChatNetworkRequest::ChatNetworkRequest(QObject *parent) :
        QObject(parent)
{
    // 设置线程池大小为5
    m_threadPool.setMaxThreadCount(5);
}

void ChatNetworkRequest::sendGetRequest(const QUrl &url, const QUrlQuery &params)
{

    QUrl requestUrl(url);
    requestUrl.setQuery(params);
    QNetworkRequest request(requestUrl);
    request.setUrl(requestUrl);

    QNetworkReply *reply = m_networkAccessManager.get(request);

    QObject::connect(reply, &QNetworkReply::finished, this,  [=]() {
        if (reply->error() == QNetworkReply::NoError) {
            emit responseReceived(reply->readAll());
        } else {
            emit responseReceived(QByteArray());
        }

        reply->deleteLater();
    });

    // 在线程池中运行请求
//    m_threadPool.start([=]() {
        // 拼接参数到 URL
//        QUrl requestUrl(url);
//        requestUrl.setQuery(params);
//
//        QNetworkRequest request(requestUrl);
//        QNetworkReply *reply = m_networkAccessManager.get(request);
//
//        // 等待响应
//        QEventLoop eventLoop;
//        QObject::connect(reply, &QNetworkReply::finished, &eventLoop, &QEventLoop::quit);
//        eventLoop.exec();
//
//        if (reply->error() == QNetworkReply::NoError) {
//            emit responseReceived(reply->readAll());
//        } else {
//            emit responseReceived(QByteArray());
//        }
//
//        reply->deleteLater();
//    });
}
