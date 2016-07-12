import QtQuick 2.6

MochiText {
  signal clicked

  font.weight: Font.Bold
  font.capitalization: Font.AllUppercase

  MouseArea {
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor

    Component.onCompleted: {
      clicked.connect(parent.clicked);
    }
  }
}
