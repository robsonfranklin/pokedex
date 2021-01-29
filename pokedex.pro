QT += charts qml quick sql \
    widgets

HEADERS += \
    connection.h \
    pokedexdb.h

SOURCES += \
    main.cpp \
    pokedexdb.cpp

RESOURCES += \
    resources.qrc

DISTFILES += \
    qml/pokedex/* \
    qml/pokedex/ListModel.qml

target.path = Users/robson/codespace/CPP/pokedex/
INSTALLS += target
