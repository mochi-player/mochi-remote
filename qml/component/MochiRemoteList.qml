import QtQuick 2.6
import QtQuick.Layouts 1.3
import "../widget"

Rectangle {
  color: MochiStyle.background.normal

  MochiBorder {
    id: leftBorder
    type: MochiStyle.left
  }
  MochiBorder {
    id: rightBorder
    type: MochiStyle.right
  }
  MochiBorder {
    id: topBorder
    type: MochiStyle.top
    RowLayout {
      anchors.fill: parent

      Item { width: MochiStyle.spacing.margin }
      MochiTextButton {
        text: qsTr("Refresh")
        color: MochiStyle.text.accent
        size: 1.5
      }
      Item { Layout.fillWidth: true }
      MochiTextButton {
        text: qsTr("Cancel")
        color: MochiStyle.text.accent
        size: 1.5
      }
      Item { width: MochiStyle.spacing.margin }
    }
  }
  MochiBorder {
    id: bottomBorder
    type: MochiStyle.bottom
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
    delegate: Rectangle {
      anchors.left: parent.left
      anchors.right: parent.right
      color: MochiStyle.background.normal
      height: label.height + MochiStyle.margin*2

      MochiText {
        id: label
        x: MochiStyle.spacing.margin
        y: MochiStyle.spacing.margin
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
        x: parent.width - width - MochiStyle.spacing.margin
        y: parent.height - height - MochiStyle.spacing.margin
        text: qsTr("Connect")
      }
    }
  }
}
