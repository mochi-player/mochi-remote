import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import "../widget"

ApplicationWindow {
  id: window
  objectName: "window"

  width: 400
  height: 600

  MochiRectangle {
    anchors.fill: parent

    ColumnLayout {
      anchors.fill: parent
      spacing: MochiStyle.margin

      RowLayout {
        Layout.fillWidth: true

        Item { width: MochiStyle.margin }
        MochiButton {
          id: powerButton
          source: "qrc:/connect.svg"
          onClicked: {
            if(remote.host == "")
              remote.host = "localhost";
            else
              remote.host = "";
          }
        }
        Item { Layout.fillWidth: true }
        ColumnLayout {
          spacing: 0
          Layout.alignment: Qt.AlignVCenter

          MochiText {
            text: qsTr("mochi-remote")
            size: 2.0
            font.capitalization: Font.AllLowercase
            Layout.alignment: Qt.AlignRight
          }
          MochiText {
            id: status
            Layout.alignment: Qt.AlignRight
            text: (remote.host == "") ? qsTr("Select a PC to Connect") : qsTr("Connected to %0").arg(remote.host)
            color: MochiStyle.softText
          }
        }
        Item { width: MochiStyle.margin }
      }

      StackView {
        id: stack

        Layout.fillWidth: true
        Layout.fillHeight: true
        initialItem: remotes

        Item {
          id: remotes

          ColumnLayout {
            anchors.fill: parent
            spacing: 0

            Item {
              height: triangleImage.height

              Image {
                id: triangleImage
                source: "qrc:/triangle.svg"
                x: powerButton.x + 12
                width: 24
                height: 24
              }
            }

            MochiRemoteList {
              Layout.fillHeight: true
              Layout.fillWidth: true
            }
          }
        }

        MochiController {
          id: controller
          visible: false
        }
      }
    }

    states: [
      State {
        name: "disconnected"
        when: remote.host == ""
        onCompleted: stack.pop()
      },
      State {
        name: "connected"
        when: remote.host != ""
        onCompleted: stack.push(controller)
      }
    ]
  }

  onClosing: app.quit()
}
