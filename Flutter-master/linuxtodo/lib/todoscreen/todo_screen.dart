import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:linuxtodo/database/database.dart';
import 'package:linuxtodo/todoscreen/todo_card.dart';
import 'package:toastification/toastification.dart';

import 'dialog_box.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _controller = TextEditingController();

  // db connection
  final _myBox = Hive.box('myBox');
  var db = TodoDataBase();

  @override
  void initState() {
    if (_myBox.get("TaskList") == null) {
      db.createDataBase();
    } else {
      db.loadData();
    }
    super.initState();
  }

  void changeTaskStatus(bool? value, int index) {
    setState(() {
      db.taskList[index][1] = !db.taskList[index][1]; // opposite of current
    });

    db.updateDatabase();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(controller: _controller, onSave: saveNewTask);
      },
    );
  }

  void saveNewTask() {
    setState(() {
      if (_controller.text.isEmpty) {
        toastification.show(
          context: context,
          
          type: ToastificationType.error,
          style: ToastificationStyle.minimal,
          title: Text("New Task Can't be Empty"),

          alignment: Alignment.topCenter,
          autoCloseDuration: const Duration(seconds: 5),
        );
      } else {
        db.taskList.add([_controller.text, false]); // collect controller text
        _controller.clear();
        toastification.show(
          context: context,
          
          type: ToastificationType.success,
          title: Text('New Task Added'),
          alignment: Alignment.topCenter,
          autoCloseDuration: const Duration(seconds: 5),
        );
        db.updateDatabase();
        Navigator.of(context).pop();
      }
    });
  }

  void deleteTask(int index) {
    setState(() {
      db.taskList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Management', style: TextStyle(color: Colors.white)),
        elevation: 09,
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade300,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),

      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: db.taskList.length,
        itemBuilder: (context, index) {
          return TodoCard(
            taskName: db.taskList[index][0],
            isCompleted: db.taskList[index][1],
            onCheckboxChanged: (bool? value) => changeTaskStatus(value, index),
            deleteFun: (BuildContext) => deleteTask(index),
          );
        },
      ),
    );
  }
}
