#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "source/InteractiveMain.h"

int main(int argc, char** argv)
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    InteractiveMain interactive;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("interactive", &interactive);

    const QUrl url(QStringLiteral("qrc:/Main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
