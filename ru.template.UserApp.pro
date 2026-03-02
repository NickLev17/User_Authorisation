TARGET = ru.template.UserApp

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/UserPage.qml \
    rpm/ru.template.UserApp.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.template.UserApp.ts \
    translations/ru.template.UserApp-ru.ts \
