import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
  objectName: "userPage"
  allowedOrientations: Orientation.All
  property string login
  property string phone
  backgroundColor: "#2c3e50"
  SilicaFlickable {
    objectName: "flickable"
    anchors.fill: parent
    contentHeight: Screen.height * 1.5
    PageHeader {
      id:_pageHeader
      objectName: "pageHeader"
      title: qsTr("Информация о пользователе")
    }
    Column {
      id: layout
      objectName: "layout"
      width: parent.width
      spacing: 5
      y:100
      Label {
        objectName: "nameText"
        anchors {
          left: parent.left
          right: parent.right
          leftMargin: Theme.horizontalPageMargin
          rightMargin: Theme.horizontalPageMargin
          topMargin: Theme.paddingLarge
        }
        color: palette.highlightColor
        font.pixelSize: Theme.fontSizeSmall
        textFormat: Text.RichText
        wrapMode: Text.WordWrap
        text: qsTr("Имя")
      }
      TextField {
        id: _textField_Name
        anchors {
          left: parent.left
          right: parent.right
          leftMargin: Theme.horizontalPageMargin
          rightMargin: Theme.horizontalPageMargin
          topMargin: Theme.paddingLarge
        }
        placeholderText: "Введите имя"
        inputMethodHints: Qt.ImhEmailCharactersOnly
      }
      Label {
        objectName: "familyText"
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        color: palette.highlightColor
        font.pixelSize: Theme.fontSizeSmall
        textFormat: Text.RichText
        wrapMode: Text.WordWrap
        text: qsTr("Фамилия")
      }
      TextField {
        id: _textField_Family
        anchors {
          left: parent.left
          right: parent.right
          leftMargin: Theme.horizontalPageMargin
          rightMargin: Theme.horizontalPageMargin
          topMargin: Theme.paddingLarge
        }
        placeholderText: "Введите фамилию"
        inputMethodHints: Qt.ImhEmailCharactersOnly
      }
      Label {
        objectName: "secondNameText"
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        color: palette.highlightColor
        font.pixelSize: Theme.fontSizeSmall
        textFormat: Text.RichText
        wrapMode: Text.WordWrap
        text: qsTr("Отчество")
      }
      TextField {
        id: _textField_SecondName
        anchors {
          left: parent.left
          right: parent.right
          leftMargin: Theme.horizontalPageMargin
          rightMargin: Theme.horizontalPageMargin
          topMargin: Theme.paddingLarge
        }
        placeholderText: "Введите Отчество"
        inputMethodHints: Qt.ImhEmailCharactersOnly
      }

      Label {
        objectName: "emailText"
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        color: palette.highlightColor
        font.pixelSize: Theme.fontSizeSmall
        textFormat: Text.RichText
        wrapMode: Text.WordWrap
        text: qsTr("Электронная почта")
      }
      TextField {
        id: _textField_Email
        anchors {
          left: parent.left
          right: parent.right
          leftMargin: Theme.horizontalPageMargin
          rightMargin: Theme.horizontalPageMargin
          topMargin: Theme.paddingLarge
        }
        placeholderText: "Введите адрес эл. почты"
        inputMethodHints: Qt.ImhEmailCharactersOnly
      }
      Rectangle
      {
        id: _spacer_1
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        height: 10
        color: "lightgreen"
      }

      Label {
        id: _txt_information
        objectName: "informationText"
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        color: palette.highlightColor
        font.pixelSize: Theme.fontSizeSmall
        textFormat: Text.RichText
        wrapMode: Text.WordWrap
        text: qsTr("Выберите интересующие Вас темы")
      }
      Column
      {
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        spacing: 5

        TextSwitch
        {
          id:_switchEducation
          checked: true
          anchors {
            left: parent.left
            right: parent.right
          }
          text:  qsTr("Образование")
        }

        TextSwitch
        {
          id:_switchEntertainment
          checked: true
          anchors {
            left: parent.left
            right: parent.right
          }

          text: qsTr("Развлечения")
        }

        TextSwitch
        {
          id:_switchSport
          checked: true
          anchors {
            left: parent.left
            right: parent.right
          }

          text: qsTr("Спорт")
        }

        TextSwitch
        {
          id:_switchFamily
          checked: true
          anchors {
            left: parent.left
            right: parent.right
          }
          text: qsTr("Семья")
        }

        TextField
        {
          id:_textFieldOther

          anchors {
            left: parent.left
            right: parent.right
          }
          placeholderText: qsTr("Другое")
        }
      }

      Rectangle
      {
        id: _spacer_2
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        height: 10
        color: "lightgreen"
      }

      Rectangle
      {
        id: _rec
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        height: 450
        color: "#2c3e50"

        Label {
          id: _txt_mailing
          objectName: "mailingText"
          anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
          color: palette.highlightColor
          font.pixelSize: Theme.fontSizeSmall
          textFormat: Text.RichText
          wrapMode: Text.WordWrap
          text: qsTr("Согласие на рассылку информации от партнёров сервиса")
        }

        TextSwitch
        {
          id:_switchMailing
          checked: true
          anchors {
            left: parent.left
            top: _txt_mailing.bottom
            leftMargin: Theme.horizontalPageMargin
            rightMargin: Theme.horizontalPageMargin
            topMargin: Theme.paddingLarge
          }

          text: checked ? qsTr("Согласен"): qsTr("Не согласен")
        }
        Label {
          id: _txt_approval
          objectName: "approvalText"
          anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin ;top: _switchMailing.bottom}
          color: palette.highlightColor
          font.pixelSize: Theme.fontSizeSmall
          textFormat: Text.RichText
          wrapMode: Text.WordWrap
          text: qsTr("Согласие на обработку персональных данных")
        }

        TextSwitch
        {
          id:_switch
          checked: true
          anchors {
            left: parent.left
            top: _txt_approval.bottom
            leftMargin: Theme.horizontalPageMargin
            rightMargin: Theme.horizontalPageMargin
            topMargin: Theme.paddingLarge
          }
          text: checked ? qsTr("Согласен"): qsTr("Не согласен")
        }
      }

      Rectangle
      {
        id: _spacer_3
        anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        height: 10
        color: "lightgreen"
      }

      Item
      {
       anchors { left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
      height: 170
      }
      Button
      {
        id: _pbn_applay
        anchors {
          horizontalCenter: parent.horizontalCenter
          top: _switch.bottom
          bottomMargin: Theme.paddingLarge
        }
        text: "Применить"
        width: parent.width * 0.75
        height: implicitHeight
        onClicked: {
          showUserData()
        }
      }
    }
    VerticalScrollDecorator{}
  }

  Connections {
    target: _switch

    onCheckedChanged: {
      _switch.checked? _pbn_applay.visible=true: _pbn_applay.visible=false

    }
  }

  function showUserData()
  {
    console.log("Логин пользователя: ",login)
    console.log("Номер телефона: ",phone)
    console.log("Фамилия",_textField_Family.text)
    console.log("Имя",_textField_Name.text)
    console.log("Отчество",_textField_SecondName.text)
    console.log("Электронная почта: ",_textField_Email.text)
    console.log("Интересы:")
    console.log("Образование",_switchEducation.checked)
    console.log("Развлечения",_switchEntertainment.checked)
    console.log("Спорт",_switchSport.checked)
    console.log("Семья",_switchFamily.checked)
    console.log("Другое",_textFieldOther.text)
    console.log("Согласие на рассылку от партнёров сервиса",_switchMailing.checked)
    console.log("Согласие на обработку персональных данных",_switch.checked)
  }
}




