import QtQuick 2.0
import QtQuick.Controls 2.12

// a simple button without a specified action
Rectangle {
    id: button
    color: "transparent"
    width: buttonText.width + paddingHorizontal * 2
    height: buttonText.height + paddingVertical * 2

    // button properties
    property alias text: buttonText.text
    property alias textColor: buttonText.color
    property alias textSize: buttonText.font.pixelSize
    property alias backgroundColor: button.color
    property int paddingHorizontal: notification > 0 ? notificationRect.width/2+4:4
    property int paddingVertical: 4
    property int notification: 0

    // called when the button is clicked
    signal clicked

    // the text labelling the button
    Text {
        id: buttonText
        font.pixelSize: 18
        color: "white"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter:notification > 0 ? undefined: parent.horizontalCenter
        x: notification > 0 ?2 : 0
    }

    // the clickable area of the button
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: button.clicked()
        onPressed: button.opacity = 0.6
        onReleased: button.opacity = 1
    }

    // the rectangle displaying the amount of new messages in the inbox
    Rectangle{
        id: notificationRect
        anchors.left: buttonText.right
        anchors.leftMargin: 3
        color: "red"
        width: 15
        height: 15
        radius: 40
        visible: notification > 0
        anchors.verticalCenter: parent.verticalCenter

        // number of new messages in the inbox
        Text{
            font.pixelSize: 10
            font.bold: true
            anchors.centerIn: parent
            text: notification
            color: "white"
        }
    }
}
