import QtQuick 2.0
import "."

Rectangle {
  property bool accent: false

  color: accent ? MochiStyle.accentBackground : MochiStyle.normalBackground
  border.width: 0
  border.color: MochiStyle.accentBackground
}
