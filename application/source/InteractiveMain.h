//
// Created by diwa on 2023/3/21.
//

#pragma once
#include <QObject>
class InteractiveMain : public QObject
{
    Q_OBJECT
public:
    explicit InteractiveMain(QObject *parent = nullptr);

    Q_INVOKABLE void clearModel();
    Q_INVOKABLE void sendMessage(const QString &message);
public:
    signals:
     void sigReceivedChatMessage(const QString &text);

};
