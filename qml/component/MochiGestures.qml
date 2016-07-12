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
    Item { height: MochiStyle.spacing.margin }
    RowLayout {
      Layout.fillWidth: true

      Item { width: MochiStyle.spacing.margin }
      Image {
        Layout.alignment: Qt.AlignVCenter
        source: "qrc:/previous.svg"
      }
      Image {
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignVCenter
        source: "qrc:/hline.svg"
      }
      Item { width: MochiStyle.spacing.margin }
      MochiText {
        id: playButton
        Layout.alignment: Qt.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        text: remote.paused ? qsTr("Tap to<br>Play") : qsTr("Tap to<br>Pause")
        size: 1.5
        font.capitalization: Font.AllUppercase
      }
      Item { width: MochiStyle.spacing.margin }
      Image {
        Layout.fillWidth: true
        source: "qrc:/hline.svg"
        rotation: 180
      }
      Image {
        source: "qrc:/next.svg"
      }
      Item { width: MochiStyle.spacing.margin }
    }
    Item { height: MochiStyle.spacing.margin }
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
    Item { height: MochiStyle.spacing.margin }
  }

  Mochi.Input {
    id: input
    anchors.fill: parent
    gestures: true
    mouse: {
      "HDrag": "function(d) { remote.time = d; }",
      "VDrag": "function(d) { remote.volume = d; }",
      "Click": "remote.paused^=true"
    }
    Component.onCompleted: input.attach(this);
  }
}
