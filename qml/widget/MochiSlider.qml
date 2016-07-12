import QtQuick 2.0
import "."

Item {
  property double pos: 0.35
  width: 100
  height: 15

  Rectangle {
    anchors.left: parent.left
    anchors.right: parent.right
    color: MochiStyle.background.accent
    x: 0
    y: parent.height/2 - height/2
    height: 2
  }

  Image {
    source: "qrc:/circle.svg"
    x: (pos * parent.width) - width/2
    y: parent.height/2 - height/2
    height: 10
    width: 10
  }

  MouseArea {
    anchors.fill: parent

    Component.onCompleted: {
      var update = function(event) {
        pos = Math.max(0.0, Math.min(1.0, event.x / parent.width));
        event.accept = true;
      };
      positionChanged.connect(update);
      clicked.connect(update);
    }
  }
}
