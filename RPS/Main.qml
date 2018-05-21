/*
 * Copyright 2017-2018 Ivo Xavier <ivofernandes12@gmail.com>.
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


import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import "rps.js" as Compare

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "rps.ivoxavier"

    width: units.gu(78)
    height: units.gu(75)

    property real buttonWidth: units.gu(13)
    property real buttonHeight: units.gu(13)


    Page {
        id: page
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("RPS")
            /*!StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }*/
        }

    Label {
      id: resultado1
    }

        Row {
            id: rowButton
            spacing: 150
            anchors{
                bottom: page.bottom
                horizontalCenter: parent.horizontalCenter
            }



            Button {
                id: rockbutton
                text: "Rock"
                width: buttonWidth
                height: buttonHeight
                color: UbuntuColors.grey
                font.pointSize: 12
                font.family: "UbuntuMono"
                onClicked: {
                    Compare.logic("pedra");
                }
            }

            Button {
                id: papperbutton
                text: "Papper"
                width: buttonWidth
                height: buttonHeight
                color: UbuntuColors.orange
                font.pointSize: 12
                font.family: "UbuntuMono"
                onClicked: {
                    Compare.logic("papel");
                }

            }

            Button {
                id: scissorsbutton
                text: "Scissors"
                width: buttonWidth
                height: buttonHeight
                color: UbuntuColors.red
                font.pointSize: 12
                font.family: "UbuntuMono"
                onClicked: {
                    Compare.logic("tesoura");
                }

            }

        }

    }

    Component.onCompleted: Compare.start()

}
