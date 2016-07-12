import QtQuick 2.6

Image {
  signal clicked

  MouseArea {
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor

    Component.onCompleted: {
      clicked.connect(parent.clicked);
    }
  }
}
