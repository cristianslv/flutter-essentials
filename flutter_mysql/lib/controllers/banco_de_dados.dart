import 'package:sqflite/sqflite.dart';

class BancoDeDados {
  static BancoDeDados _instance;

  Database db;

  String onCreateSQL = '''
    CREATE TABLE cidades (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT
    );
  ''';

  BancoDeDados._privado();

  factory BancoDeDados() {
    return _instance ??= BancoDeDados._privado();  
  }

  Future<void> onCreate(Database db, int version) async{
    await db.execute(onCreateSQL);
  }

  Future<void> openDb() async {
    if (db == null) {
      return getDatabasesPath().then((value) {
        String path = value + "cidades.db";

        return openDatabase(path, onCreate: onCreate, version: 1).then((value) {
          db = value;
        });
      });
    }
  }
}