import QtQuick 2.0

Item {
    width: 50
    height: 50

    property bool isClicked: false
    signal mybut_clicked()

    Image {
        id: but_bg
        source: "qrc:/assets/images/light_off.png"
        anchors.centerIn: parent
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            mybut_clicked()
            isClicked =! isClicked
            if(isClicked)
            {
                but_bg.source = "qrc:/assets/images/light_on.png"
            }
            else{
                but_bg.source = "qrc:/assets/images/light_off.png"
            }

        }
    }
}
