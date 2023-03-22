#include <QApplication>
#include "source/chatmainwindow.h"
#include <QQmlApplicationEngine>

int main(int argc, char** argv)
{
//    QApplication app(argc, argv);
//    ChatMainWindow mainWindow;
//    mainWindow.show();
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load("qrc:/Main.qml");

    return app.exec();
}
