import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:path/path.dart';

class notesDatabase {

    static final notesDatabase instance =notesDatabase._init();
    notesDatabase._init();


    static sqflite.Database? _database;

    Future<sqflite.Database> get database async {
      if(_database != null) return _database!;
      _database = await _initDB('notesDatabase.db');
      return _database!;

    }

    Future<sqflite.Database> _initDB(String filepath) async {

      final dbpath = await sqflite.getDatabasesPath();

      final path = join(dbpath, filepath);
      return await sqflite.openDatabase(
        path,
        version: 2,
        onCreate:_createDb
      );
    }


  Future _createDb(sqflite.Database db, int version) async {
    await db.execute('''
    CREATE TABLE notes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    date TEXT NOT NULL,
    color INTEGER NOT NULL DEFAULT 0
    
    )
  ''');
  }

  // Notes Add
  Future<int> addNote(
    String title,
    String description,
    String date,
    int color,
  ) async {
    final db = await instance.database;

    return await db.insert('notes', {
      'title': title,
      'description': description,
      'date': date,
      'color': color,
    });
  }

  // get data from Database

  Future<List<Map<String, dynamic>>> getNotes() async {
    final db = await instance.database;
    return await db.query('notes', orderBy: 'date DESC');
  }
}
