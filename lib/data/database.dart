
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class LocalDataBase {
  int version = 1;

  Future<Database> database(String createSql) async {
    return await openDatabase(
      join(await getDatabasesPath(), 'my.db'),
      version: version,
      onCreate: (db, version) {
        return db.execute(
          createSql,
        );
      },
    );
  }
}