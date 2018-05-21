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
