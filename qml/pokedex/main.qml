import QtQml 2.0
import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0


ApplicationWindow {
    id: appWindow
    title: qsTr("CM Pokedex")
    visible: true

    property int shorterDesktop: 768
    property int longerDesktop: 1024
    property int shorterMin: 360
    property int longerMin: 480
    property bool isPortrait: Screen.primaryOrientation === Qt.PortraitOrientation
    width: 600
    height: 600
    minimumWidth: isPortrait ? shorterMin : longerMin
    minimumHeight: isPortrait ? longerMin : shorterMin


    GridLayout{
        id: mycols



        Column{
            id: myleft
            Layout.alignment: left
            Layout.column : 1

            Layout.minimumWidth: 300
            Layout.minimumHeight: 400

            Rectangle {
                id: rectTest;
                color: "green";
                width: 100;
                height: 100;
            }

            Text {
                id: mytextsample
                text: "hello"
                font.bold: true;
                font.italic: true;
                font.pixelSize: 20;
                font.capitalization: Font.AllUppercase;

                function changeMyLabel(){

                    this.text = "hi" +  toString( aa.getPokemon(2) )  ;
                }
            }




        }

        Column{
            id: myright
            Layout.alignment: right
             Layout.minimumWidth: 250;
             Layout.minimumHeight: 400;


            Rectangle {
                id: webViewPlaceholder
                anchors.fill: parent
                z: 1
                color: "gray"

                BusyIndicator {
                    id: busy
                    anchors.centerIn: parent
                }

            }
        }


    }

    Button {
        id: mypokebutton
        x: 11
        y: 143
        text: qsTr("My Pokemons")
        onClicked: mytextsample.changeMyLabel();
    }

    Button {
        id: allpokesbutton
        x: 11
        y: 189
        width: 100
        text: qsTr("ALL Pokemons")
    }

    Button {
        id: isitfarbutton
        x: 11
        y: 235
        text: "Is it far?"
        checkable: false
    }





}
