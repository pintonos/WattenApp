import QtQuick 2.0

Rectangle {
    id: rectangle
    color: "blue"
    width: 100
    height: 230
    radius: 10

    // access the text of the Text component
    property alias text: cardText.text

    property bool togglePosition: false
    anchors.horizontalCenter: parent.horizontalCenter
    // this property binding changes the horizontal offset from the center each time togglePosition changes
    anchors.horizontalCenterOffset: togglePosition ? -100 : 100
    anchors.verticalCenter: parent.verticalCenter

    Text {
        id: cardText
        anchors.centerIn: parent
        font.pixelSize: 18
        color: "black"
    }


    MouseArea {
        anchors.fill: parent
        onPressed: {
            // every time the rectangle is pressed, we toggle its position by changing the horizontal offset from the center
            rectangle.togglePosition = !rectangle.togglePosition
            rectanglePressed()
        }
    }
}
