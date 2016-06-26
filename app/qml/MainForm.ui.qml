import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: item1
    width: 800
    height: 1280

    Item {
        id: top_controls
        height: 240
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: mochiText
            x: 478
            text: qsTr("mochi-mote")
            color: "#808080"
            horizontalAlignment: Text.AlignRight
            anchors.right: parent.right
            anchors.rightMargin: 32
            anchors.top: parent.top
            anchors.topMargin: 32
            font.pixelSize: 55
        }

        Text {
            id: statusText
            x: 522
            text: qsTr("NOT CONNECTED")
            color: "#808080"
            horizontalAlignment: Text.AlignRight
            anchors.right: parent.right
            anchors.rightMargin: 32
            anchors.top: mochiText.bottom
            anchors.topMargin: 0
            font.pixelSize: 28
        }

        Button {
            id: playlistButton
            x: 606
            y: -53
            width: 150
            height: 50
            text: qsTr("SHOW PLAYLIST")
            anchors.right: parent.right
            anchors.rightMargin: 32
            anchors.top: statusText.bottom
            anchors.topMargin: 32
        }

        Button {
            id: muteButton
            x: 51
            width: 150
            height: 50
            text: qsTr("MUTE")
            anchors.top: statusText.bottom
            anchors.topMargin: 32
            anchors.left: parent.left
            anchors.leftMargin: 32
        }

        Button {
            id: connectButton
            width: 75
            height: 75
            text: qsTr("")
            iconSource: "qrc:/rcs/connect.svg"
            anchors.left: parent.left
            anchors.leftMargin: 32
            anchors.top: parent.top
            anchors.topMargin: 32
        }
    }

    Item {
        id: main_controls
        x: 0
        y: 246
        anchors.bottomMargin: -200
        anchors.top: top_controls.bottom
        anchors.right: parent.right
        anchors.bottom: advanced_controls.top
        anchors.left: parent.left
        anchors.topMargin: 0

        Image {
            id: next
            x: 654
            y: 397
            width: 100
            height: 100
            source: "qrc:/rcs/next.svg"
            opacity: 0
        }

        Image {
            id: volume_down
            x: 406
            y: 700
            width: 100
            height: 100
            source: "qrc:/rcs/volume_down.svg"
            opacity: 0
        }

        Image {
            id: image7
            x: 384
            y: 549
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            opacity: 0
        }

        Image {
            id: image5
            x: 509
            y: 393
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            opacity: 0
        }

        Image {
            id: image4
            x: 193
            y: 393
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            opacity: 0
        }

        Image {
            id: previous
            y: 393
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            opacity: 0
        }

        Image {
            id: image2
            x: 350
            y: 218
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            opacity: 0
        }

        Image {
            id: volume_up
            x: 350
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            opacity: 0
        }
    }

    Item {
        id: advanced_controls
        height: 150
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: text1
            color: "#808080"
            text: qsTr("ADVANCED")
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 48
        }
    }
    states: [
        State {
            name: "connected"

            PropertyChanges {
                target: volume_up
                anchors.topMargin: 50
                fillMode: Image.PreserveAspectFit
                source: "qrc:/rcs/volume_up.svg"
                opacity: 1
            }

            PropertyChanges {
                target: image2
                opacity: 1
            }

            PropertyChanges {
                target: previous
                anchors.leftMargin: 0
                source: "qrc:/rcs/previous.svg"
                opacity: 1
            }

            PropertyChanges {
                target: image4
                opacity: 1
            }

            PropertyChanges {
                target: image5
                opacity: 1
            }

            PropertyChanges {
                target: next
                anchors.rightMargin: 46
                source: "qrc:/rcs/next.svg"
                opacity: 1
            }

            PropertyChanges {
                target: image7
                opacity: 1
            }

            PropertyChanges {
                target: volume_down
                anchors.bottomMargin: 290
                source: "qrc:/rcs/volume_down.svg"
                opacity: 1
            }
        }
    ]
}
