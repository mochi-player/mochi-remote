#include "remote.h"
#include <QVariantList>
#include <QVariantMap>
#include <QList>
#include <QMap>
#include <QString>

Remote::Remote(QQuickItem *parent):
  QQuickItem(parent) {
  setObjectName("remote");

  setProperty("title", "test");
  setProperty("paused", false);
  setProperty("time", 0);
  setProperty("volume", 100);
  QVariantMap test;
  test["title"]="test";
  setProperty("playlist", QVariantList({test}));
  setProperty("remotes", QVariantList{test});
}
