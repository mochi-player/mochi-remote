import QtQuick 2.0
import "."

Text {
  id: obj

  property double size: 1.0

  color: MochiStyle.text.normal
  font.family: MochiStyle.font.family
  font.pointSize: MochiStyle.font.size * size
}
