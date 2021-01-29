QT += charts qml quick sql \
    widgets

HEADERS += \
    buttonmanager.h \
    connection.h \
    datasource.h \
    pokedexdb.h

SOURCES += \
    buttonmanager.cpp \
    main.cpp \
    datasource.cpp \
    pokedexdb.cpp

RESOURCES += \
    resources.qrc

DISTFILES += \
    qml/pokedex/* \
    qml/pokedex/ListModel.qml

target.path = Users/robson/codespace/CPP/pokedex/
INSTALLS += target
