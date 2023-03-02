
import 'package:local_database/data/database.dart';
import 'package:sqflite/sqflite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pref_repository.freezed.dart';
part 'pref_repository.g.dart';

@freezed
class Pref with _$Pref {
  const factory Pref({
    required int prefId,
    required String prefName,
    required String prefKana,
  }) = _Pref;

  factory Pref.fromJson(Map<String, Object?> json)
      => _$PrefFromJson(json);
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
      pref.toJson(),
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
      pref.toJson(),
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