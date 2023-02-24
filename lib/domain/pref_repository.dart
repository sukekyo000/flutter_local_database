
import 'package:local_database/data/database.dart';
import 'package:sqflite/sqflite.dart';

class Pref {
  Pref({required this.prefId, required this.prefName, required this.prefKana});
  final int prefId;
  final String prefName;
  final String prefKana;

  Map<String, dynamic> toMap(){
    return {
      "prefId": prefId,
      "prefName": prefName,
      "prefKana": prefKana
    };
  }
}


class PrefRepository extends LocalDataBase {
  String prefCreateSql = "CREATE TABLE pref(prefId INTEGER, prefName TEXT, prefKana TEXT)";

  Future<Database> prefTable() async {
    Database prefTable = await database(prefCreateSql);
    return prefTable;
  }

  Future<void> insertPref(Pref pref) async {
    Database prefDatabase = await prefTable();
    await prefDatabase.insert(
      "pref",
      pref.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await prefDatabase.close();
    return;
  }

  Future<List<Pref>> getPref() async {
    Database prefDatabase = await prefTable();
    final List<Map<String, dynamic>> prefs = await prefDatabase.query('pref');
    return List.generate(prefs.length, (i) {
      return Pref(
        prefId: prefs[i]['prefId'],
        prefName: prefs[i]['prefName'],
        prefKana: prefs[i]['prefKana'],
      );
    });
  }

  Future<void> updatePref(Pref pref) async {
    Database prefDatabase = await prefTable();
    await prefDatabase.update(
      'pref',
      pref.toMap(),
      where: "prefId = ?",
      whereArgs: [pref.prefId],
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  Future<void> deletePref(int prefId) async {
    Database prefDatabase = await prefTable();
    await prefDatabase.delete(
      'pref',
      where: "prefId = ?",
      whereArgs: [prefId],
    );
  }
}