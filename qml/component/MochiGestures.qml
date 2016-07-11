import QtQuick 2.6
import QtQuick.Layouts 1.3
import Mochi 1.0 as Mochi
import "../widget"

Item {
  ColumnLayout {
    anchors.fill: parent

    Image {
      source: "qrc:/volume_up.svg"
      Layout.alignment: Qt.AlignCenter
    }
    Image {
      Layout.fillHeight: true
      Layout.alignment: Qt.AlignCenter
      source: "qrc:/vline.svg"
    }
    Item { height: MochiStyle.margin }
    RowLayout {
      Layout.fillWidth: true

      Item { width: MochiStyle.margin }
      Image {
        Layout.alignment: Qt.AlignVCenter
        source: "qrc:/previous.svg"
      }
      Image {
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignVCenter
        source: "qrc:/hline.svg"
      }
      Item { width: MochiStyle.margin }
      MochiText {
        id: playButton
        Layout.alignment: Qt.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        size: 2.0
        text: remote.paused ? qsTr("Tap to<br>Play") : qsTr("Tap to<br>Pause")
      }
      Item { width: MochiStyle.margin }
      Image {
        Layout.fillWidth: true
        source: "qrc:/hline.svg"
        rotation: 180
      }
      Image {
        source: "qrc:/next.svg"
      }
      Item { width: MochiStyle.margin }
    }
    Item { height: MochiStyle.margin }
    Image {
      Layout.fillHeight: true
      Layout.alignment: Qt.AlignCenter
      source: "qrc:/vline.svg"
      rotation: 180
    }
    Image {
      Layout.alignment: Qt.AlignCenter
      source: "qrc:/volume_down.svg"
    }
    Item { height: MochiStyle.margin }
  }

  Mochi.Input {
    id: input
    anchors.fill: parent
    gestures: true
    mouse: {
      "HDrag": "function(d) { console.log('remote.time = d;'); }",
      "VDrag": "function(d) { console.log('remote.volume = d;'); }",
      "Click": "console.log('remote.paused^=true')"
    }
    Component.onCompleted: input.attach(this);
  }
}
