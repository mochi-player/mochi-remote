import QtQuick 2.6
import QtQuick.Layouts 1.3

MochiController {
  ColumnLayout {
    Layout.fillWidth: true
    Layout.fillHeight: true

    RowLayout {
      Layout.fillWidth: true
      Layout.alignment: Qt.VAlignMiddle

      Text {
        id: elapsed
        width: 80
      }
      MochiSeekbar {
        id: seekbar
        Layout.fillWidth: true
      }
      Text {
        id: remaining
        width: 80
      }
    }
    RowLayout {
      Layout.fillWidth: true

      MochiButton {
        text: checked ? "Mute" : "Unmute"
      }
      Item { Layout.fillWidth: true }
      MochiButton {
        text: checked ? "Show Playlist" : "Hide Playlist"
      }
    }
    MochiPlaylist {
      id: playlist
      Layout.fillWidth: true
      Layout.fillHeight: true
    }
    MochiGestures {
      id: controller
      Layout.fillWidth: true
      Layout.fillHeight: true
    }
  }

  states: [
    State {
      when: playlistVisible
      PropertyChange {
        target: playlist
        visible: true
      }
      PropertyChange {
        target: controller
        visible: false
      }
    },
    State {
      when: !playlistVisible
      PropertyChange {
        target: playlist
        visible: false
      }
      PropertyChange {
        target: controller
        visible: true
      }
    }
  ]
}
