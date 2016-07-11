#ifndef APPLICATION_H
#define APPLICATION_H

#include <QObject>
#include <QQuickItem>
#include <QString>
#include <QJSEngine>
#include <QJSValue>
#include <QVariant>

class Application : public QQuickItem {
  Q_OBJECT
  Q_CLASSINFO("Version", "1.0.0")

  Q_PROPERTY(QString version MEMBER version USER true)
  Q_PROPERTY(bool debug MEMBER debug USER true)
  Q_PROPERTY(QString init MEMBER init USER true)

public:
  explicit Application(QQuickItem *parent = 0);

  QJSEngine *getEngine() { return engine; }

public slots:

protected slots:
  void attach(QJSValue val);
  void addObject(QObject*);
  void addFunction(QString name, QJSValue func);
  QJSValue evaluate(const QString &val);

signals:

private:
  QJSEngine *engine;

  QString version;
  bool debug;
  QString init;
};

#endif // APPLICATION_H
