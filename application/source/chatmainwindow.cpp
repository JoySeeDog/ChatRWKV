//
// Created by diwa on 2023/3/21.
//

#include "chatmainwindow.h"

ChatMainWindow::ChatMainWindow(QWidget* parent)
: QQuickWidget(parent)  {
    setResizeMode(QQuickWidget::SizeRootObjectToView);
    QQuickWidget mainWindow;
    mainWindow.setSource(QUrl(QStringLiteral("qrc:/main.qml")));
    mainWindow.setParent(this);
}
