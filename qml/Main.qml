/*
 * 2017-2022 Ivo Xavier <ivofernandes12@gmail.com>.
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
import QtQuick.Controls.Suru 2.2
import io.thp.pyotherside 1.4
import Qt.labs.settings 1.0
import "./Components"

MainView {
    id: root
    objectName: "mainView"
    applicationName: "rps.ivoxavier"

    property color followSystemTheme : {}
    property int activeTheme: Suru.theme === 0 ? followSystemTheme = UbuntuColors.porcelain : followSystemTheme = UbuntuColors.dark
    
    signal newGame()

    width: units.gu(45)
    height: units.gu(75)
    backgroundColor: followSystemTheme
    
    PageStack{
        id: mainStack
        anchors.fill: parent
        onCurrentPageChanged: {
            console.log("Current PageStack: " + currentPage.objectName)
        }
    }
    Component{
        id: gamePage
        GamePage{}
    }
    
    Backend{id: backend}

    Component.onCompleted:{
        mainStack.push(gamePage)
    }
}
