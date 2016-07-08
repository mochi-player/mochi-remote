import QtQuick 2.6

MochiWidget {
  ListView {
    id: list
    anchors.fill: parent
    model: remote.playlist
    header: Rectangle {
      color: accent
      Text {
        text: "%0 / %1".arg(list.selected).arg(remote.playlist.length);
      }
    }
    delegate: Rectangle {
      color: background
      border: 1
      Text {
        text: title
        weight: remote.playlist.index == index ? bold : regular;
      }
    }
    highlight: Rectangle {
      color: accent 
      border: 1
      y: list.currentItem.y
    }
    footer: Rectangle {
      color: accent
    }
  }
}
