import QtQuick 2.6
import QtQuick.Layouts 1.3
import "../widget"

MochiRectangle {
  MochiBorder {
    id: leftBorder
    type: MochiStyle.left
    accent: true
  }
  MochiBorder {
    id: rightBorder
    type: MochiStyle.right
    accent: true
  }
  MochiBorder {
    id: topBorder
    type: MochiStyle.top
    accent: true
    RowLayout {
      anchors.fill: parent

      Item { width: MochiStyle.margin }
      MochiTextButton {
        text: qsTr("Refresh")
        accent: true
        size: 1.5
      }
      Item { Layout.fillWidth: true }
      MochiTextButton {
        text: qsTr("Cancel")
        accent: true
        size: 1.5
      }
      Item { width: MochiStyle.margin }
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
    anchors.left: leftBorder.right
    anchors.right: rightBorder.left
    anchors.bottom: bottomBorder.top
    highlightFollowsCurrentItem: true

    model: ListModel {
      ListElement {
        host: "test"
      }
    }
    delegate: MochiRectangle {
      anchors.left: parent.left
      anchors.right: parent.right
      height: label.height + MochiStyle.margin*2

      MochiText {
        id: label
        x: MochiStyle.margin
        y: MochiStyle.margin
        text: host
      }
    }
    highlight: Item {
      anchors.fill: list.currentItem
      MochiBorder {
        type: MochiStyle.top
        size: 5
      }
      MochiBorder {
        type: MochiStyle.bottom
        size: 5
      }
      MochiTextButton {
        x: list.currentItem.width - 10 - width
        y: list.currentItem.height - 10 - height
        text: qsTr("Connect")
      }
    }
  }
}
