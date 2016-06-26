import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    visible: true
    width: 800
    height: 1280
    title: qsTr("mochi-mote")
    style: ApplicationWindowStyle {
        background: Rectangle {
            color: "#000000"
        }
    }

    MainForm {
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
