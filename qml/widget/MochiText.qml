import QtQuick 2.0
import "."

Text {
  id: obj

  property bool accent
  property double size: 1.0

  color: obj.accent ? MochiStyle.accentText : MochiStyle.normalText
  font.capitalization: Font.AllUppercase
  font.family: MochiStyle.font
  font.pointSize: MochiStyle.fontSize * size
  font.weight: obj.accent ? Font.Bold : Font.Normal
}
