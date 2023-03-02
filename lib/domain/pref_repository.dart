
import 'package:local_database/data/database.dart';
import 'package:sqflite/sqflite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pref_repository.freezed.dart';
part 'pref_repository.g.dart';

@freezed
class Pref with _$Pref {
  const factory Pref({
    @JsonKey(name: 'pref_id') required int prefId,
    @JsonKey(name: 'pref_name') required String prefName,
    @JsonKey(name: 'pref_kana') required String prefKana,
  }) = _Pref;

  factory Pref.fromJson(Map<String, Object?> json)
      => _$PrefFromJson(json);
}

class PrefRepository extends LocalDataBase {
  String prefCreateSql = "CREATE TABLE pref_master(pref_id INTEGER, pref_name TEXT, pref_kana TEXT);";

  Future<Database> prefTable() async {
    Database prefTable = await database(prefCreateSql);
    return prefTable;
  }

  Future<void> insertPref(Pref pref) async {
    Database prefDatabase = await prefTable();
    await prefDatabase.insert(
      "pref_master",
      pref.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await prefDatabase.close();
    return;
  }

  Future<List<Pref>> getPref() async {
    Database prefDatabase = await prefTable();
    // テーブルを更新する際はデータベース名の名前も変えないとエラーになる(キャッシュ？)
    final List<Map<String, dynamic>> prefs = await prefDatabase.query('pref_master');
    return List.generate(prefs.length, (i) {
      return Pref(
        prefId: prefs[i]['pref_id'],
        prefName: prefs[i]['pref_name'],
        prefKana: prefs[i]['pref_kana'],
      );
    });
  }

  Future<void> updatePref(Pref pref) async {
    Database prefDatabase = await prefTable();
    await prefDatabase.update(
      'pref_master',
      pref.toJson(),
      where: "pref_id = ?",
      whereArgs: [pref.prefId],
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
  }

  Future<void> deletePref(int prefId) async {
    Database prefDatabase = await prefTable();
    await prefDatabase.delete(
      'pref_master',
      where: "pref_id = ?",
      whereArgs: [prefId],
    );
  }
}