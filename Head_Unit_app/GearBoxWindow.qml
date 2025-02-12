import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
        id: gearBoxOverlay
        visible: showGearBox
        color: "transparent"
        anchors.fill: parent

        GearBox {
            anchors.right: parent.right
            anchors.rightMargin: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -25
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mainWindow.showGearBox = false
            }
            z: -1
        }
}
