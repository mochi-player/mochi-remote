import QtQuick 2.6

MochiText {
  signal clicked

  font.weight: Font.Bold

  MouseArea {
    anchors.fill: parent
    cursorShape: Qt.PointingHandCursor
    onClicked: function (event) { parent.clicked(event); }
  }
}
