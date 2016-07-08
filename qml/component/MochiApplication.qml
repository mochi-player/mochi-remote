import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

ApplicationWindow {
  property string connected

    Item {
      ColumnLayout {
        RowLayout {
          Layout.fillWidth: true
          height: powerButton.height

          MochiButton {
            id: powerButton
            enabledIcon: "power.svg"
          }
          Item { Layout.fillWidth: true }
          MochiWidget {
            Layout.fillHeight: true
            Layout.alignment: Qt.VAlignMiddle | Qt.AlignRight
            Text {
    //          size: 100%
              text: "mochi-mote"
            }
            Text {
              id: status
    //          size: 50%
              text: connected ? "Connected to %0".arg(connected) : "Select a PC to Connect"
            }
          }
        }
        MochiController {
          id: controller
          Layout.fillWidth: true
          Layout.fillHeight: true
        }
        MochiRemoteList {
          id: remotes
          Layout.fillWidth: true
          Layout.fillHeight: true
        }
      }
      states: [
        State {
          when: connected
          PropertyChanges {
            target: remotes
            visible: false
          }
          PropertyChanges {
            target: controller
            visible: true
          }
        },
        State {
          when: !connected
          PropertyChanges {
            target: remotes
            visible: true
          }
          PropertyChanges {
            target: controller
            visible: false
          }
        }
      ]
    }
}
