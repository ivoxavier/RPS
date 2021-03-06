/*
 * 2017-2021 Ivo Xavier <ivofernandes12@gmail.com>
 * 
 *  
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.9
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import "../js/rps.js" as Game

Page {
    id: page
    objectName: "GamePage"
    header: PageHeader {
        id: pageHeader
        title: i18n.tr("RPS")
        StyleHints {
            foregroundColor: UbuntuColors.porcelain
            backgroundColor: "#594092"
        }
    }

    property int imagesHeights: scissors.height
    property var objectNameToAnimation : {}
    property var imgPaperPath : "../imgs/papper.png"
    property var imgScissorsPath : "../imgs/scissors.png"
    property var imgRockPath : "../imgs/rock.png"

    Column {
        id: mainColumn
        anchors.top: pageHeader.bottom
        anchors.bottom: page.bottom
        anchors.right: page.right
        anchors.left: page.left
        spacing: 104
        topPadding: 3
        

        Rectangle{
            id: resultRow
            width: page.width
            height: 42
            color: followSystemTheme
            Row{
                //anchors.top: parent
                spacing: 44
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
                Label{
                    id: cpuWinsCount
                    text: "CPU: 0"
                    font.pixelSize: 42
                    font.weight: Font.DemiBold

                }
                Label{
                    id: humanWinsCount
                    text: "Human: 0"
                    font.pixelSize: 42
                    font.weight: Font.Bold

                } 
            }
        }

        Rectangle{
            id: boxQuestion
            width: page.width
            height: page.height / 4
            color: followSystemTheme

            Image {
                id: cpuChoiceImage
                anchors.centerIn: parent
                source: "../imgs/question.png"
                sourceSize.width: 1000
                sourceSize.height: 1000
                //scale: Qt.KeepAspectRatio 
            }
        }


        Rectangle{
            width: page.width
            height: vs.height
            color: "#FF5555"
            Label{
                id: vs
                anchors.centerIn: parent
                text: "VS"
                
            }
        }


        Rectangle {
            id: imageBox
            width: page.width
            height: 1000
            color: followSystemTheme
          

            Row {
                id: rowButton
                spacing: 60
                anchors{
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }

                SequentialAnimation {
                    id: animation
                    
                    RotationAnimation {
                        target: objectNameToAnimation
                        properties: "rotation"
                        duration: 100
                        to: 40
                        easing.type: Easing.OutQuad
                    }
                    RotationAnimation {
                        target: objectNameToAnimation
                        properties: "rotation"
                        duration: 200
                        to: -40
                        easing.type: Easing.OutQuad
                    }
                    RotationAnimation {
                        target: objectNameToAnimation
                        properties: "rotation"
                        duration: 100
                        to: 0
                        easing.type: Easing.OutQuad
                    }
                }

                Image{
                    id: paper
                    source: imgPaperPath
                    //fillMode: Image.PreserveAspectFit
                    sourceSize.width: 1000
                    sourceSize.height: 1000
                    //scale: Qt.KeepAspectRatio 
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            //console.log("paperButton")
                            objectNameToAnimation = paper
                            animation.start()
                            Game.play("p")
                        }
                    }
                }
                    
                Image{
                    id: rock
                    source: imgRockPath
                    //fillMode: Image.PreserveAspectFit
                    sourceSize.width: 1000
                    sourceSize.height: 1000
                    //scale: Qt.KeepAspectRatio 
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            //console.log("rockButton")
                            objectNameToAnimation = rock
                            animation.start()
                            Game.play("r")
                        }
                    }
                }
                    
                Image{
                    id: scissors
                    source: imgScissorsPath
                    //fillMode: Image.PreserveAspectFit
                    sourceSize.width: 1000
                    sourceSize.height: 1000
                    //scale: Qt.KeepAspectRatio                    
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            //console.log("scissorsButton")
                            objectNameToAnimation = scissors
                            animation.start()
                            Game.play("s")
                        }
                    }
                }
            }
        }
    }

    Component.onCompleted:{
        }
}

   

