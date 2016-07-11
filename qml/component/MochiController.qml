import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import "../widget"

Item {
  id: controller
  ColumnLayout {
    anchors.fill: parent

    Item { height: MochiStyle.margin }
    RowLayout {
      Layout.fillWidth: true
      Layout.alignment: Qt.AlignVCenter

      Item { width: MochiStyle.margin }
      MochiText {
        id: elapsed
        text: "0:00"
      }
      Item { width: MochiStyle.margin }
      MochiSeekbar {
        id: seekbar
        Layout.fillWidth: true
      }
      Item { width: MochiStyle.margin }
      MochiText {
        id: remaining
        text: "-0:00"
      }
      Item { width: MochiStyle.margin }
    }
    Item { height: MochiStyle.margin }
    RowLayout {
      Layout.fillWidth: true

      Item { width: MochiStyle.margin }
      MochiTextButton {
        id: muteButton
        text: remote.muted ? "Mute" : "Unmute"
        onClicked: remote.muted=!remote.muted
      }
      Item { Layout.fillWidth: true }
      MochiTextButton {
        id: playlistButton
        text: (controller.state == "playlist") ? "Hide Playlist" : "Show Playlist"
        onClicked: {
          if(controller.state == "playlist")
            controller.state = "gestures";
          else
            controller.state = "playlist";
        }
      }
      Item { width: MochiStyle.margin }
    }
    Item { height: MochiStyle.margin }

    StackView {
      id: stack
      Layout.fillWidth: true
      Layout.fillHeight: true
      initialItem: gestures

      MochiGestures {
        id: gestures
      }
      MochiPlaylist {
        id: playlist
        visible: false
      }
    }
  }
  state: "gestures"
  states: [
    State {
      name: "gestures"
      onCompleted: stack.pop()
    },
    State {
      name: "playlist"
      onCompleted: stack.push(playlist)
    }
  ]
}
