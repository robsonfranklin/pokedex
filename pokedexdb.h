#ifndef POKEDEXDB_H
#define POKEDEXDB_H

#include <QObject>
#include <QWidget>

#include <QtCore/QObject>
#include <QtWidgets/QMessageBox.h>
#include <QtSql/QSqlDatabase.h>
#include <QtSql/QSqlQuery.h>
#include <QSqlDatabase>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlQuery>

#include <QString>
#include <QtGlobal>

#include <QtDebug>


class PokedexDb
{
private:
QSqlDatabase db ;

public:
    PokedexDb();
    bool createConnection();
    void insertDefaultData ();
    void deleteDefaultData();
    void showFullDatabase ();
    bool addPokemon(int newid, QString newname, QString newimagepath, int newbase_experience);
    bool deletePokemon(int idtodelete);
    int getPokemon(int id_poke);
};

#endif // POKEDEXDB_H
