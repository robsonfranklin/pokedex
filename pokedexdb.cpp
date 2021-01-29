#include "pokedexdb.h"

PokedexDb::PokedexDb()
{
    bool a = false;
    a = this->createConnection();


}
bool PokedexDb::createConnection()
{

    if(!db.isOpen()){
        db = QSqlDatabase::addDatabase("QSQLITE");
        db.setDatabaseName("/Users/robson/codespace/CPP/pokedex/mypokedex.db");

        if (!db.open()) {
            qDebug() << "ERROR: " << db.lastError();

            QMessageBox::critical(nullptr, QObject::tr("Cannot open database"),
                QObject::tr("Unable to establish a database connection.\n"
                            "This example needs SQLite support. Please read "
                            "the Qt SQL driver documentation for information how "
                             "to build it.\n\n"
                            "Click Cancel to exit."), QMessageBox::Cancel);
            return false;
        }
    }

        QStringList _tb = db.tables();
    if( db.tables().size()  > 0 ){
        this->insertDefaultData();
//        this->addPokemon(13,"teste","teste.png",54);
//        this->deletePokemon(13);
    }else{
        this->deleteDefaultData();
    }

    return true;
}
void PokedexDb::showFullDatabase (){
    QSqlQuery query;

    query.prepare("select *  from pokemon; ");
    query.exec();
//        if(!query.exec()){
//              qWarning() << "ERROR: " << query.lastError().text();
//        }
//        query.prepare("SELECT name FROM people WHERE id = ?");
//        query.addBindValue(mInputText->text().toInt());

}
void PokedexDb::deleteDefaultData (){

    QSqlQuery query;
    query.exec("delete from pokemon where id = 12;");
}
void PokedexDb::insertDefaultData (){


    QSqlQuery query;
    query.exec("create table pokemon (id int primary key, "
               "name varchar(20),file varchar(20)  ,base_experience int  )");

    query.exec("insert into pokemon values(001, 'Bulbasaur', 'img/001.png', 64)");
    query.exec("insert into pokemon values(002, 'Ivysaur', 'img/002.png', 142)");
    query.exec("insert into pokemon values(003, 'Venusaur', 'img/003.png', 263)");

    query.exec("insert into pokemon values(004, 'Charmander', 'img/004.png', 62)");
    query.exec("insert into pokemon values(005, 'Charmeleon', 'img/005.png', 142)");
    query.exec("insert into pokemon values(006, 'Charizard', 'img/006.png', 267)");

    query.exec("insert into pokemon values(007, 'Squirtle', 'img/007.png', 63)");
    query.exec("insert into pokemon values(008, 'Wartortle', 'img/008.png', 142)");
    query.exec("insert into pokemon values(009, 'Blastoise', 'img/009.png', 265)");

    query.exec("insert into pokemon values(010, 'Caterpie', 'img/010.png', 39)");
    query.exec("insert into pokemon values(011, 'Metapod', 'img/011.png', 72)");
    query.exec("insert into pokemon values(012, 'Butterfree', 'img/012.png', 198)");

//https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png

}


bool PokedexDb::addPokemon(int newid, QString newname, QString newimagepath, int newbase_experience){

    QSqlQuery query;
    query.prepare("INSERT INTO pokemon values ( ?, ?, ?, ? )");
    query.addBindValue(newid);
    query.addBindValue(newname);
    query.addBindValue(newimagepath);
    query.addBindValue(newbase_experience);
    return query.exec();

}

bool PokedexDb::deletePokemon(int id_to_del)
{
    QSqlQuery query;
    query.prepare("delete from pokemon where id = ? ");
    query.addBindValue(id_to_del);
    return query.exec();

}


int PokedexDb::getPokemon(int id_poke)
{
    QSqlQuery query;
    query.prepare("select id from pokemon where id = ? ");
    query.addBindValue(id_poke);
    return query.exec();

}
