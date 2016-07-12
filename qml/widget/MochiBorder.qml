import QtQuick 2.0
import "."

Rectangle {
  property int type
  property int size: {
    if(type == MochiStyle.top)
      return MochiStyle.spacing.top
    else if(type == MochiStyle.bottom)
      return MochiStyle.spacing.bottom
    else
      return MochiStyle.spacing.side
  }

  color: MochiStyle.background.accent

  function _in(v, a) {
    return (a.indexOf(v) != -1);
  }

  anchors.top: _in(type, [MochiStyle.top, MochiStyle.left, MochiStyle.right]) ? parent.top : undefined
  anchors.left: _in(type, [MochiStyle.top, MochiStyle.left, MochiStyle.bottom]) ? parent.left : undefined
  anchors.right: _in(type, [MochiStyle.top, MochiStyle.right, MochiStyle.bottom]) ? parent.right : undefined
  anchors.bottom: _in(type, [MochiStyle.left, MochiStyle.right, MochiStyle.bottom]) ? parent.bottom : undefined
  height: _in(type, [MochiStyle.top, MochiStyle.bottom]) ? size : undefined
  width: _in(type, [MochiStyle.left, MochiStyle.right]) ? size : undefined
}
