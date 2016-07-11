import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import Mochi 1.0 as Mochi
import "../widget/"

Mochi.Application {
  id: app

  version: "1.0.0"
  debug: true
  init: ""

  MochiWindow {
    id: window
    visible: true
  }

  Mochi.Remote {
    id: remote
    port: 8474
    muted: false
    paused: true
  }

  function quit() {
//    config.save();
    Qt.quit();
  }

  Component.onCompleted: {
    // Attach QML's JSEngine to Application
    app.attach(this);

    // Expose objects to JSEngine
    [window, remote, app].map(function(obj) {
      app.addObject(obj);
    });

    // Expose functions to JSEngine
    app.addFunction("quit", quit);

    // Load in user configuration or write one
//  if(!config.load())
//    config.save();

    // Call user init script
    evaluate(app.init);

    // TODO: remote init
  }
}
