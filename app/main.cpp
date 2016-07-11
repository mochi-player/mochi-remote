#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "application.h"
#include "input.h"
#include "remote.h"

int main(int argc, char *argv[])
{
  // Consistency for high resolution displays
  QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

  QGuiApplication app(argc, argv);

  qmlRegisterType<Application>("Mochi", 1, 0, "Application");
  qmlRegisterType<Input>("Mochi", 1, 0, "Input");
  qmlRegisterType<Remote>("Mochi", 1, 0, "Remote");

  QQmlApplicationEngine engine;
  engine.load(QUrl(QStringLiteral("qrc:/component/MochiApplication.qml")));

  return app.exec();
}
