#ifndef INPUT_H
#define INPUT_H

#include <QObject>
#include <QQuickItem>
#include <QVariantMap>
#include <QMouseEvent>
#include <QWheelEvent>
#include <QKeyEvent>
#include <QJSEngine>
#include <QJSValue>
#include <QElapsedTimer>
#include <QMap>
#include <QString>
#include <QPoint>

class Input : public QQuickItem {
  Q_OBJECT
  Q_CLASSINFO("Version", "1.0.0")

  Q_PROPERTY(QVariantMap key MEMBER key USER true)
  Q_PROPERTY(QVariantMap mouse MEMBER mouse USER true)
  Q_PROPERTY(bool gestures MEMBER gestures USER true)

public:
  explicit Input(QQuickItem *parent = 0);
  ~Input();

public slots:

protected slots:
  void attach(QJSValue val);

  void mouseMoveEvent(QMouseEvent *event);
  void mousePressEvent(QMouseEvent *event);
  void mouseReleaseEvent(QMouseEvent *event);
  void mouseDoubleClickEvent(QMouseEvent *event);
  void wheelEvent(QWheelEvent *event);
  void keyPressEvent(QKeyEvent *event);
  void keyReleaseEvent(QKeyEvent *event);

  QString getMouseAction(const QString &event);
  bool fireMouseEvent(const QString &event);
  bool fireKeyEvent(const QString &event);

private slots:

signals:

private:
  QJSEngine *engine;
  QVariantMap key;
  QVariantMap mouse;
  bool gestures;

  const int timerThreshold = 100;
  const int gestureThreshold = 15;

  struct ActiveGesture {
    ActiveGesture(const QString &name);

    const QString name;
    bool enabled;
    QString action;
    QPoint startPos;
    QElapsedTimer timer;
  };

  typedef QMap<Qt::MouseButton, ActiveGesture*> GestureMap;
  GestureMap activeGestures;
};

#endif // INPUT_H
