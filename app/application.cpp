#include "application.h"

Application::Application(QQuickItem *parent):
  QQuickItem(parent) {
  setObjectName("app");
}

void Application::attach(QJSValue val) {
  // Grap QML JSEngine from any QJSValue
  engine = val.engine();
}

void Application::addObject(QObject *obj) {
  // Make object accessible to QJSEngine
  Q_ASSERT(engine);
  engine->globalObject().setProperty(obj->objectName().toUtf8().constData(), engine->newQObject(obj));
}

void Application::addFunction(QString name, QJSValue func) {
  Q_ASSERT(engine);
  engine->globalObject().setProperty(name, func);
}

QJSValue Application::evaluate(const QString &cmd) {
  // Evaluate command via QJSEngine
  Q_ASSERT(engine);
  return engine->evaluate(cmd);
}
