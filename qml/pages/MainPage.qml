import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All
    backgroundColor: "#2c3e50"
    PageHeader {
        id: pageHeader
        objectName: "pageHeader"
        title: qsTr("Авторизация пользователя")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }

    TextField {
        id: _textField_Login
        anchors {
            left: parent.left
            right: parent.right
            top: pageHeader.bottom
            leftMargin: Theme.horizontalPageMargin
            rightMargin: Theme.horizontalPageMargin
            topMargin: Theme.paddingLarge
        }
        placeholderText: "Введите логин"
        inputMethodHints: Qt.ImhLatinOnly
    }

    TextField {
        id: _textField_Phone
        anchors {
            left: _textField_Login.left
            right: _textField_Login.right
            top: _textField_Login.bottom
            topMargin: Theme.paddingMedium
        }
        placeholderText: "Введите номер телефона"
        inputMethodHints:Qt.ImhFormattedNumbersOnly
    }
    Label {
        id: _txt_Inform
        visible: false
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: _textField_Phone.bottom
            topMargin: Theme.paddingMedium
        }
        color: "red"
        text: "Заполните все поля ввода !"
    }

    Button {
        id: _btn_autorization
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: _txt_Inform.bottom
            topMargin: Theme.paddingLarge
            bottomMargin: Theme.paddingLarge
        }
        width: parent.width * 0.75
        height: implicitHeight
        text: "Зарегистрироваться"
        onClicked: {

            if( (_textField_Login.text.length==0)||(_textField_Phone.text.length==0))
            {
                _txt_Inform.visible=true
                return
            }
            _txt_Inform.visible=false;
            pageStack.push(Qt.resolvedUrl("UserPage.qml"),{

                               "login": _textField_Login.text,
                               "phone": _textField_Phone.text})
        }
    }


}
