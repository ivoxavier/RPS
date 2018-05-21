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

Dialog {
    id: fundialog
    title: "Winner:"
    width: units.gu(34)
    height: units.gu(24)

    Label {
        id: finalresult
        text: resultado1.text
    }

    Button {
        text: "Play again!"
        onClicked: PopupUtils.close(fundialog)
    }

}
