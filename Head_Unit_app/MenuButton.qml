import QtQuick 2.0
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Item {
    id: menuButton
    property int widthData: 250
    property int heightData: 350
    property string menuName: "menu"
    property string imgSource: "source"

    width: widthData
    height: heightData

    Rectangle {
        id: menuB_image
        width: parent.width
        height: parent.width
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            source: menuButton.imgSource
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
        }
    }

    Rectangle {
        id: menuB_text

        width: parent.width
        height: 100
        color: "#232121"
        radius: 5

        anchors.top: menuB_image.bottom
        anchors.horizontalCenter: menuB_image.horizontalCenter

        Text {
            text: menuButton.menuName
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10

            font.pixelSize: 30
            color: "white"
        }
    }

    layer.enabled: true
    layer.effect: DropShadow {
        color: carInfoController.modeColor
        radius: 10
        samples: 16
        spread: 0.2
        x: 0
        y: 1
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log("Menu clicked!");
        }
    }

}
