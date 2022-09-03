import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbHelper {

  late Database _db;

  static const String Db_Name = 'Test.db';
  static const String Table_User = 'user';
  static const int Version = 1;

  static const String C_UserID = '';
  static const String C_UserName = '';
  static const String C_Email = '';
  static const String C_Password = '';

  Future<Database> get db async {

    if (_db != null){

      return _db;
    }

    _db = await initDb();
    return _db;

  }

  initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String Path = join(documentDirectory.path, Db_Name);
    var db = await openDatabase(Path, version: Version, onCreate: _onCreate);
    return db;

  }

  _onCreate(Database db, int intVersion) async{
    await db.execute("CREATE TABLE $Table_User ("
        "$C_UserID, TEXT"
        " $C_UserName, TEXT"
        " $C_Email, TEXT"
        " $C_Password, TEXT"
        "PRIMARY KEY ($C_UserID)"
    ")");


  }







}