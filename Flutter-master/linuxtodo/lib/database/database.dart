import 'package:hive/hive.dart';

class TodoDataBase {
  List taskList = [];

  final _myBox = Hive.box('myBox');

  /// data store

  void createDataBase() {
    taskList = [

        ['Task4', false],
        ['Task2', false],

    ];
  }

  void loadData() {
    taskList = _myBox.get('TaskList'); // set key to fetch data
  }

  void updateDatabase() {
    _myBox.put('TaskList', taskList); //
  }
}
