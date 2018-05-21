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
