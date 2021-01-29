import QtQml 2.0
import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0


Item {
    id: appWindow
    //    title: qsTr("CM Pokedex")
    visible: true

    property int shorterDesktop: 768
    property int longerDesktop: 1024
    property int shorterMin: 360
    property int longerMin: 480
    property bool isPortrait: Screen.primaryOrientation === Qt.PortraitOrientation
    width: 600
    height: 600


    GridLayout{
        id: mycols

        Column{
            id: myleft
            Layout.column : 1
            Layout.minimumWidth: 200
            Layout.minimumHeight: 400


            Text {
                id: cmmenu
                text: "CM menu"
                font.bold: true;
                font.italic: true;
                font.pixelSize: 20;
                font.capitalization: Font.AllUppercase;
            }

            spacing: 10
            Button {
                id: mypokebutton
                x: 11
                y: 143
                width: 120
                text: qsTr("My Pokemons")
                onClicked: toptile.changeMyLabel("My Pokemons");
            }

            Button {
                id: allpokesbutton
                x: 11
                y: 189
                width: 120
                text: qsTr("ALL Pokemons")
                onClicked: toptile.changeMyLabel("ALL Pokemons");
            }

            Button {
                id: isitfarbutton
                x: 11
                y: 235
                width: 120
                text: "Is it far?"
                onClicked: toptile.changeMyLabel("Is it far?");
            }
        }


        Column{
            id: myright
            Layout.minimumWidth: 250;
            Layout.minimumHeight: 400;

            ColumnLayout{
                id: mygridlist
                anchors.fill: parent
                Layout.maximumWidth: 100


                function changeMyLabel(){

                    for (var i = 0; i < pokedexDb.variantList.length; i++) {

                        console.log("variantList id(%1), name(%2) = %3".arg(pokedexDb.variantList[i][0]).arg(pokedexDb.variantList[i][1]).arg(pokedexDb.variantList[i][2]))
                        Qt.createQmlObject('import QtQuick 2.0; import QtQuick.Layouts 1.0; ColumnLayout { Text { font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "ID(%0)"  }  Text { font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "NAME(%1)" }  Text { font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "base_experience(%2)" }}'.arg(pokedexDb.variantList[i][0]).arg(pokedexDb.variantList[i][1]).arg(pokedexDb.variantList[i][2]), mygridlist)
                    }
                }

                Rectangle {
                    id: webViewPlaceholder
//                    anchors.fill: parent
                    z: 1
                    color: "lightgray"

                    Text {
                        id: toptile

                        text: "Lista dos Meus pokemons"
                        font.bold: true;
                        font.italic: true;
                        font.pixelSize: 20;
                        font.capitalization: Font.AllUppercase;


                        function changeMyLabel (x){
                            this.text = x;
                            mygridlist.changeMyLabel();
                        }

                    }

                }
            }
        }


    }






}
