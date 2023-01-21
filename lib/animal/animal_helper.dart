import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AnimalHelper {
  late Database _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Future<String> dir = getDatabasesPath();
    String path = join(dir.toString(), "animal.db");
    var database =
        await openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute('''
        CREATE TABLE animal 
        (
          id INTEGER PRIMARY KEY NOT NULL
        )
        ''');
    });

    return database;
  }
}
