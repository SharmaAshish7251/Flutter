import 'package:hive/hive.dart';

class TodoDataBase{

  // List<List<dynamic>> checkArray = [];

  List checkArray = [

  ];
  final _myBox = Hive.box('myBox'); // mybox like container




// to create database --- first time -- provide some sample database to avoid length error
void createDataBase(){
  checkArray = [
    ["Alex", false],
    ["Sonu", false],
    ["Michel", false],];
}


// after creating data load the created database
void loadData(){
  checkArray = _myBox.get("TODOLIST");  // TODOLIST is a key
}

// to update
void updateDatabase(){
  _myBox.put("TODOLIST""", checkArray);

}










}



