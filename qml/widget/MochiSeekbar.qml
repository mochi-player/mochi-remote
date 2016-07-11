import QtQuick 2.0

Item {
  id: obj

  property double pos: 0.35

  height: 15

  MochiRectangle {
    anchors.left: parent.left
    anchors.right: parent.right
    accent: true
    x: 0
    y: obj.height/2 - height/2
    height: 2
  }

  Image {
    anchors.verticalCenter: parent
    source: "qrc:/circle.svg"
    x: (pos * obj.width) - width/2
    y: obj.height/2 - height/2
    height: 10
    width: 10
  }

  MouseArea {
    anchors.fill: parent

    Component.onCompleted: {
      var update = function(event) {
        pos = Math.max(0.0, Math.min(1.0, event.x / obj.width));
        event.accept = true;
      };
      positionChanged.connect(update);
      clicked.connect(update);
    }
  }
}
