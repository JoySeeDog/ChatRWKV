//
// Created by diwa on 2023/3/21.
//

#pragma once
#include <QObject>
class InteractiveMainWindow : public QObject
{
    Q_OBJECT
public:
    explicit InteractiveMainWindow(QObject *parent = nullptr);

    Q_INVOKABLE void clearModel();

    Q_INVOKABLE void mySlot(QString message);

};
