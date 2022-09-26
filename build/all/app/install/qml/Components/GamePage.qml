/*
 * 2017-2021 Ivo Xavier <ivofernandes12@gmail.com>
 * 2022  Ivo Xavier <ivofernandes12@gmail.com>
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
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
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

    property var imagesHeights: units.gu(9.5)
    property QtObject objectNameToAnimation

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


    function setCPUpic(){
        backend.setHandler('rock_img', function(returnValue) {
            cpuChoiceImage.source = returnValue
        });
        backend.setHandler('paper_img', function(returnValue) {
            cpuChoiceImage.source = returnValue
        });
        backend.setHandler('scissors_img', function(returnValue) {
            cpuChoiceImage.source = returnValue
        });
    }

    ColumnLayout {
        id: mainColumn
        width: root.width
        anchors.top: pageHeader.bottom
        spacing: units.gu(2)
        
        RowLayout{
            Layout.alignment: Qt.AlignCenter
            spacing: units.gu(6)
            width: parent.width
            Label{
                id: cpuWinsCount
                property int wins: 0
                text: i18n.tr("CPU: ") + wins
                font.pixelSize: units.gu(4)
                font.weight: Font.DemiBold

            }
            Label{
                id: humanWinsCount
                property int wins: 0
                text: i18n.tr("You: ") + wins
                font.pixelSize: units.gu(4)
                font.weight: Font.Bold

            } 
        }

        BlankSpace{height:units.gu(4)}

        Image {
            id: cpuChoiceImage
            Layout.alignment: Qt.AlignCenter
            source: "../imgs/question.png"
            Layout.preferredWidth: imagesHeights
            Layout.preferredHeight: width
        }
        


        BlankSpace{height:units.gu(30)}

        RowLayout {
            id: rowButton
            spacing: units.gu(2)
            Layout.alignment: Qt.AlignCenter

            Image{
                id: paper
                source: "../imgs/paper.png"
                Layout.preferredWidth: imagesHeights
                Layout.preferredHeight: width
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        objectNameToAnimation = paper
                        animation.start()
                        backend.call('main.game', ["paper"], function(returnValue) {})
                        setCPUpic()
                        backend.setHandler('p_user_wins', function(returnValue) {
                            humanWinsCount.wins = humanWinsCount.wins + returnValue
                        });
                        backend.setHandler('p_cpu_wins', function(returnValue) {
                            cpuWinsCount.wins = cpuWinsCount.wins + returnValue
                        });
                    }   
                }
            }
                
            Image{
                id: rock
                source: "../imgs/rock.png"
                Layout.preferredWidth: imagesHeights
                Layout.preferredHeight: width
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        objectNameToAnimation = rock
                        animation.start()
                        backend.call('main.game', ["rock"], function(returnValue) {})
                        setCPUpic()
                        backend.setHandler('r_user_wins', function(returnValue) {
                            humanWinsCount.wins = humanWinsCount.wins + returnValue
                        });
                        backend.setHandler('r_cpu_wins', function(returnValue) {
                            cpuWinsCount.wins = cpuWinsCount.wins + returnValue
                        });
                    }
                }
            }
                
            Image{
                id: scissors
                source: "../imgs/scissors.png"
                Layout.preferredWidth: imagesHeights
                Layout.preferredHeight: width             
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        objectNameToAnimation = scissors
                        animation.start()
                        backend.call('main.game', ["scissors"], function(returnValue) {})
                        setCPUpic()
                        backend.setHandler('s_user_wins', function(returnValue) {
                            humanWinsCount.wins = humanWinsCount.wins + returnValue
                        });
                        backend.setHandler('s_cpu_wins', function(returnValue) {
                            cpuWinsCount.wins = cpuWinsCount.wins + returnValue
                        });
                    }
                }
            }
        }
    }
}