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
            Layout.minimumWidth: 300
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
                onClicked: mytextsample.changeMyLabel();
            }

            Button {
                id: allpokesbutton
                x: 11
                y: 189
                width: 120
                text: qsTr("ALL Pokemons")
            }

            Button {
                id: isitfarbutton
                x: 11
                y: 235
                width: 120
                text: "Is it far?"
                checkable: false
            }
        }

        Column{
            id: myright
             Layout.minimumWidth: 250;
             Layout.minimumHeight: 400;


            Rectangle {
                id: webViewPlaceholder
                anchors.fill: parent
                z: 1
                color: "gray"


//                BusyIndicator {
//                    id: busy
//                    anchors.centerIn: parent
//                }


//                Text { text: 'Name: ' + name }
//                Text { text: 'Type: ' + type }
//                Text { text: 'Age: ' + age }
//                Text { text: 'Size: ' + size }


//                Component.onCompleted: {
//                    console.log("variantList length %1".arg(pokedexDb.variantList.length))

//                    for (var i = 0; i < pokedexDb.variantList.length; i++) {

//                        console.log("stringList %1 length %2".arg(i).arg(pokedexDb.variantList[i].length))

//                        for (var j = 0; j < pokedexDb.variantList[i].length; j++) {
//                            // print strings to the console
//                            console.log("variantList i(%1), j(%2) = %3".arg(i).arg(j).arg(pokedexDb.variantList[i][j]))

//                            // add the strings to a visual list so we can see them in the user interface
////                            Qt.createQmlObject('import QtQuick 2.0; Text { font.bold: true; font.italic: true;font.pixelSize: 20;font.capitalization: Font.AllUppercase; text:  "i(%1)" } Text { text:  "j(%2)" }Text { text:  "(%3)" }  '.arg(i).arg(j).arg(pokedexDb.variantList[i][j]), webViewPlaceholder)
//                            Qt.createQmlObject('import QtQuick 2.0; Text { font.bold: true; font.italic: true;font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "i(%1), j(%2) = %3" }'.arg(i).arg(j).arg(pokedexDb.variantList[i][j]), webViewPlaceholder)
//                        }
//                    }
//                }




                Text {
                    id: mytextsample
                    text: "hello"
                    font.bold: true;
                    font.italic: true;
                    font.pixelSize: 20;
                    font.capitalization: Font.AllUppercase;


                    function changeMyLabel(){

//                        QStringList tmp;

//                        QStringList pokee = pokedexDb.getPokemon(2);

//                        this.text = "hi " +    pokedexDb.getPokemon(2)   ;

                        for (var i = 0; i < pokedexDb.variantList.length; i++) {

//                            console.log("stringList %1 length %2".arg(i).arg(pokedexDb.variantList[i].length))

//                            for (var j = 0; j < pokedexDb.variantList[i].length; j++) {
                                // print strings to the console
//                                console.log("variantList i(%1), j(%2) = %3".arg(i).arg(j).arg(pokedexDb.variantList[i][j]))

                                // add the strings to a visual list so we can see them in the user interface
    //                            Qt.createQmlObject('import QtQuick 2.0; Text { font.bold: true; font.italic: true;font.pixelSize: 20;font.capitalization: Font.AllUppercase; text:  "i(%1)" } Text { text:  "j(%2)" }Text { text:  "(%3)" }  '.arg(i).arg(j).arg(pokedexDb.variantList[i][j]), webViewPlaceholder)
//                                Qt.createQmlObject('import QtQuick 2.0; Text { font.bold: true; font.italic: true;font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "i(%1), j(%2) = %3" }'.arg(i).arg(j).arg(pokedexDb.variantList[i][j]), webViewPlaceholder)
// Qt.createQmlObject('import QtQuick 2.0; Text { font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "i(%1)" }'.arg(i).arg(j).arg(pokedexDb.variantList[i][j]), webViewPlaceholder)
                            Qt.createQmlObject('import QtQuick 2.0; import QtQuick.Layouts 1.0;  Text { font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "ID(%1)" }'.arg(pokedexDb.variantList[i][0]), webViewPlaceholder)


                            spacing: 10;
                            Qt.createQmlObject('import QtQuick 2.0; import QtQuick.Layouts 1.0; Text { font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "NAME(%1)" }'.arg(pokedexDb.variantList[i][1]), webViewPlaceholder)
                            Qt.createQmlObject('import QtQuick 2.0; import QtQuick.Layouts 1.0; Text { font.pixelSize: 20;font.capitalization: Font.AllUppercase;  text:  "base_experience(%1)" }'.arg(pokedexDb.variantList[i][2]), webViewPlaceholder)
//                            }
                        }
                    }
                }

            }
        }


    }






}
