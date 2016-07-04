import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: item1
    width: 800
    height: 1280


    Item {
        id: seekControls
        height: 147
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: statusText.bottom
        anchors.topMargin: 16

        Slider {
            id: sliderHorizontal1
            x: 198
            y: -290
            anchors.right: timeLeftText.left
            anchors.rightMargin: 16
            anchors.left: durationText.right
            anchors.leftMargin: 16
            anchors.bottom: muteButton.top
            anchors.bottomMargin: 32
            anchors.top: parent.top
            anchors.topMargin: 16
        }

        Text {
            id: timeLeftText
            x: 618
            y: -290
            width: 150
            color: "#808080"
            text: qsTr("-0:00:00")
            anchors.right: parent.right
            anchors.rightMargin: 32
            font.pixelSize: 28
            anchors.topMargin: 16
            anchors.top: parent.top
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: durationText
            x: 32
            y: -290
            width: 150
            color: "#808080"
            text: qsTr("0:00:00")
            anchors.left: parent.left
            anchors.leftMargin: 32
            anchors.top: parent.top
            anchors.topMargin: 16
            font.pixelSize: 28
            horizontalAlignment: Text.AlignLeft
        }

        Button {
            id: playlistButton
            x: 618
            y: -225
            width: 150
            height: 50
            text: qsTr("SHOW PLAYLIST")
            anchors.right: parent.right
            anchors.rightMargin: 32
            anchors.top: timeLeftText.bottom
            anchors.topMargin: 32
        }

        Button {
            id: muteButton
            x: 32
            y: -225
            width: 150
            height: 50
            text: qsTr("MUTE")
            anchors.top: durationText.bottom
            anchors.topMargin: 32
            anchors.left: parent.left
            anchors.leftMargin: 32
        }




    }

    Item {
        id: main_controls
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: seekControls.bottom
        anchors.topMargin: 0

        Image {
            id: volumeUp
            x: 335
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 16
            source: "rcs/volume_up.svg"
        }

        Image {
            id: volumeDown
            x: 335
            y: 739
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 32
            source: "rcs/volume_down.svg"
        }

        Image {
            id: seekRight
            x: 581
            y: 292
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 32
            source: "rcs/next.svg"
        }


        Image {
            id: seekLeft
            y: 305
            width: 100
            height: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 32
            source: "rcs/previous.svg"
        }


        Text {
            id: centerText
            x: 350
            y: 406
            width: 92
            height: 78
            color: "#808080"
            text: qsTr("TAP TO"+"\n"+"PAUSE")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.bold: true
            font.pixelSize: 40
        }


    }




    Button {
        id: connectButton
        x: 32
        y: 32
        width: 75
        height: 75
        text: qsTr("")
        iconSource: "qrc:/rcs/connect.svg"
        anchors.left: parent.left
        anchors.leftMargin: 32
        anchors.top: parent.top
        anchors.topMargin: 32
    }





    Text {
        id: statusText
        x: 520
        y: 96
        text: qsTr("NOT CONNECTED")
        color: "#808080"
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 32
        anchors.top: mochiText.bottom
        anchors.topMargin: 0
        font.pixelSize: 28
    }



    Text {
        id: mochiText
        x: 436
        y: 32
        text: qsTr("mochi-mote")
        color: "#808080"
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.rightMargin: 32
        anchors.top: parent.top
        anchors.topMargin: 32
        font.pixelSize: 55
    }




}
