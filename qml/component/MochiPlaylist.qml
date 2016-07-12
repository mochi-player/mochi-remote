import QtQuick 2.6
import QtQuick.Layouts 1.3
import "../widget"

Rectangle {
  color: MochiStyle.playlist.background

  MochiBorder {
    id: topBorder
    type: MochiStyle.top
    MochiText {
      anchors.centerIn: parent
      color: MochiStyle.text.accent
      text: "%0 / %1".arg(list.currentIndex).arg(list.count);
    }
  }
  MochiBorder {
    id: bottomBorder
    type: MochiStyle.bottom
  }
  ListView {
    id: list
    anchors.top: topBorder.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: bottomBorder.top
    highlightFollowsCurrentItem: true
    currentIndex: 0

    model: ListModel {
      ListElement {
        title: "test.mkv"
      }
    }
    delegate: Rectangle {
      anchors.left: parent.left
      anchors.right: parent.right
      height: label.height + MochiStyle.spacing.margin*2
      color: MochiStyle.playlist.background

      MochiText {
        id: label
        x: MochiStyle.spacing.margin
        y: MochiStyle.spacing.margin
        text: title
        font.weight: remote.title == title ? Font.Bold : Font.Normal;
      }

      MochiBorder {
        type: MochiStyle.bottom
        size: 1
      }
    }
    highlight: Rectangle {
      opacity: 0
      anchors.fill: list.currentItem
      border.color: MochiStyle.background.accent
      border.width: 5
    }
  }
}
