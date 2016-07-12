pragma Singleton
import QtQuick 2.6

pragma Singleton
import QtQuick 2.6

QtObject {
  property QtObject font: QtObject {
    property double size: 10.0
    property string family: "Noto Sans"
  }

  property QtObject spacing: QtObject {
    property int margin: 10
    property int top: 40
    property int bottom: 10
    property int side: 20
  }

  property QtObject background: QtObject {
    property color normal: "#eeeeee"
    property color accent: "#808080"
  }
  property QtObject text: QtObject {
    property color normal: "#666666"
    property color soft: "#888888"
    property color accent: "#ffffff"
  }

  property QtObject playlist: QtObject {
    property color background: "#ffffff"
  }

  property int top: 1
  property int left: 2
  property int right: 3
  property int bottom: 4
}
