pragma Singleton
import QtQuick 2.6

QtObject {
  property int margin: 10
  property color normalBackground: "#eeeeee"
  property color accentBackground: "#808080"
  property color normalText: "#666666"
  property color softText: "#888888"
  property color accentText: "#ffffff"
  property color playlistBackground: "#ffffff"

  property double fontSize: 10.0
  property string font: "Noto Sans"

  property int topWidth: 40
  property int bottomWidth: 10
  property int sideWidth: 20

  property int top: 1
  property int left: 2
  property int right: 3
  property int bottom: 4
}
