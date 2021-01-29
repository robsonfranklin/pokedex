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

#include <QSqlRecord>

#include <QString>
#include <QtGlobal>
#include <QtCore/QObject>
#include <QVariant>

QT_BEGIN_NAMESPACE
class QQuickView;
QT_END_NAMESPACE

class PokedexDb: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QList<QVariant> variantList READ variantList NOTIFY variantListChanged)

public:

    explicit PokedexDb(QQuickView *appViewer, QObject *parent = 0);
    ~PokedexDb();

public slots:

    bool createConnection();
    void insertDefaultData ();
    void deleteDefaultData();
    void showFullDatabase ();
    bool addPokemon(int newid, QString newname, QString newimagepath, int newbase_experience);
    bool deletePokemon(int idtodelete);
    QStringList getPokemon(int id_poke);
    QList<QVariant> variantList() const { return m_variantList; }

Q_SIGNALS:
    void variantListChanged();

private:
    QQuickView *m_appViewer;
    QSqlDatabase db ;
    int m_index;
    QList<QVariant> m_variantList;

};

#endif // POKEDEXDB_H
