import QtQuick 2.12
import QtQuick.Controls 2.12
import "controls"

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: palette.blak

    Column{
        ButtonOutline{
            text: "ZZZ"
        }

        ButtonImage{
            id: myButton
            onMybut_clicked: {
                console.log("button1 clicked, val = " + myButton.isClicked)
            }
        }

    }
}
