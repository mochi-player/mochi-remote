import QtQuick 2.6
import QtQuick.Layouts 1.3

Item {
  ColumnLayout {
    anchors.fill: parent
    Layout.alignment: Qt.AlignCenter
    Image {
      source: ":/volune_increase.svg"
    }
    Image {
      source: ":/lines.svg"
      Layout.fillHeight: true 
    }
    RowLayout {
      Layout.fillWidth: true
      Layout.alignment: Qt.AlignCenter | Qt.VAlignMiddle

      Image {
        source: ":/back.svg"
      }
      Image {
        source: ":/lines.svg"
        rotation: -90
        Layout.fillWidth: true
      }
      Text {
        text: remote.paused ? "Tap to Play" : "Tap to Pause"
      }
      Image {
        source: ":/lines.svg"
        roation: 90
        Layout.fillWidth: true
      }
      Image {
        source: ":/forward.svg"
      }
    }
    Image {
      source: ":/lines.svg"
      rotation: 180
      Layout.fillHeight: true
    }
    Image {
      source: ":/volume_down.svg"
    }
  }
  Mochi.Input {
    anchors.fill: parent 
    mouse: {
      "HDrag": function(d) {
        remote.time = d;
      },
      "VDrag": function(d) {
        remote.volume = d;
      },
      "Click": remote.paused^=true
    }
  }
}
