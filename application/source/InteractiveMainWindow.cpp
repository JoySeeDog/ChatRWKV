//
// Created by diwa on 2023/3/21.
//

#include <QDebug>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "InteractiveMainWindow.h"
#include "TalkListDefine.h"
#include "TalkListModel.h"

InteractiveMainWindow::InteractiveMainWindow(QObject *parent)
: QObject(parent)  {
    qmlRegisterType<TalkData>("TalkModel",1,0,"TalkData");
    qmlRegisterType<TalkListModel>("TalkModel",1,0,"TalkListModel");
}

void InteractiveMainWindow::clearModel() {
    qDebug() << "Received message from QML:" << "clearModel";
}

void InteractiveMainWindow::mySlot(QString message) {
    qDebug() << "Received message from QML:" << message;
}

