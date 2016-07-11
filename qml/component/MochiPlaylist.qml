import QtQuick 2.6
import QtQuick.Layouts 1.3
import "../widget"

MochiRectangle {
  color: MochiStyle.playlistBackground

  MochiBorder {
    id: topBorder
    type: MochiStyle.top
    accent: true
    MochiText {
      anchors.centerIn: parent
      accent: true
      text: "%0 / %1".arg(list.currentIndex).arg(list.count);
    }
  }
  MochiBorder {
    id: bottomBorder
    type: MochiStyle.bottom
    accent: true
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
    delegate: MochiRectangle {
      anchors.left: parent.left
      anchors.right: parent.right
      height: label.height + MochiStyle.margin*2
      color: MochiStyle.playlistBackground

      MochiText {
        id: label
        x: MochiStyle.margin
        y: MochiStyle.margin
        text: title
        font.capitalization: Font.Normal
        font.weight: remote.title == title ? Font.Bold : Font.Normal;
      }

      MochiBorder {
        type: MochiStyle.bottom
        size: 1
      }
    }
    highlight: MochiRectangle {
      anchors.fill: list.currentItem
      border.width: 5
    }
  }
}
