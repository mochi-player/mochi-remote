#ifndef REMOTE_H
#define REMOTE_H

#include <QObject>
#include <QQuickItem>

class Remote : public QQuickItem
{
  Q_OBJECT
  Q_CLASSINFO("Version", "1.0.0")

  Q_PROPERTY(QString host MEMBER host NOTIFY hostChanged)
  Q_PROPERTY(int port MEMBER port NOTIFY portChanged USER true)
  Q_PROPERTY(bool muted MEMBER muted NOTIFY mutedChanged)
  Q_PROPERTY(bool paused MEMBER paused NOTIFY pausedChanged)
public:
  explicit Remote(QQuickItem *parent = 0);

public slots:

signals:
  void hostChanged();
  void portChanged();
  void mutedChanged();
  void pausedChanged();

private:
  QString host;
  int port;
  bool muted;
  bool paused;
};

#endif // REMOTE_H
