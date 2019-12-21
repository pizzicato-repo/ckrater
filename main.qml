import QtQuick 2.12
import QtQuick.Controls 2.5
import QtMultimedia 5.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")

    Column{

        Rectangle {
            width : 800
            height : 200
            border.color: "cyan"
            border.width: 1
            MediaPlayer {
                id: mediaplayer
                source: 'drop.avi' // OK : "file:///drop.avi"
            }

            VideoOutput {
                anchors.fill: parent
                source: mediaplayer
            }

            MouseArea {
                id: playArea
                anchors.fill: parent
                onPressed: mediaplayer.play();
            }
        }

        Rectangle{
            width : 800
            height : 40
            color : "lavender"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    mediaplayer.play()
                }
            }
        }
        Image {
            source:  'qrc:rose.jpg'  // "file:///rose.jpg"
        }
    }
}
