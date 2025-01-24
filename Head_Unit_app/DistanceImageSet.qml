import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id:distanceImageSet
    width: 228
    height: 127

    Image {
        anchors.centerIn: parent
        source: "./img_dist_green.png"
        visible: carInfoController.distanceCM > 7.0 ? true : false
    }

    Image {
        anchors.centerIn: parent
        source: "./img_dist_orange.png"
        visible: carInfoController.distanceCM <= 7.0 && carInfoController.distanceCM > 4.0 ? true : false
    }

    Image {
        anchors.centerIn: parent
        source: "./img_dist_red.png"
        visible: carInfoController.distanceCM <= 4.0 ? true : false
    }

}
