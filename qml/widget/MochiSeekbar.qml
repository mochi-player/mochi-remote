import QtQuick 2.0

MochiRectangle {
  id: seekbar

  property double pos: 0.35

  accent: true
  height: 2

  Image {
    source: "qrc:/circle.svg"
    x: pos * seekbar.width
    y: seekbar.height/2 - height/2
    height: 10
    width: 10
  }
}
