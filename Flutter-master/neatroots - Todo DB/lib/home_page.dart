import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:neatroots/data/database.dart';
import 'package:neatroots/util/dialog.dart';
import 'util/todo_card.dart';
import 'package:toastification/toastification.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();

  // Database Connection
  final _myBox = Hive.box('myBox');
  var db = TodoDataBase();

  @override
  void initState() {
    if (_myBox.get("TODOLIST") == null) {
      db.createDataBase();
    } else {
      db.loadData();
    }
    super.initState(); // State Initialization
  }

  // End Database Connection

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(inputTaskController: _controller, onSave: saveNewTask);
      },
    );
  }



  void saveNewTask() {
    setState(() {
      if (_controller.text.isEmpty) {
        toastification.show(
          type: ToastificationType.error,
          style: ToastificationStyle.flat,
          alignment: Alignment.topCenter,
          direction: TextDirection.ltr,
          context: context,
          title: Text("New task can't be empty"),
          autoCloseDuration: const Duration(seconds: 5),
        );
        print('New task cant be null');
      } else {
        db.checkArray.add([
          _controller.text,
          false,
        ]); // issue array mai kyu liya, normal error
        toastification.show(
          type: ToastificationType.success,
          style: ToastificationStyle.flat,
          alignment: Alignment.topCenter,
          direction: TextDirection.ltr,
          context: context,
          title: Text("Task added! "),
          autoCloseDuration: const Duration(seconds: 5),
        );
        _controller.clear();
        Navigator.of(context).pop(); // remove pop up
      }
    });

    db.updateDatabase();
  }

  // delete
  void deleteFun(int index) {
    setState(() {
      db.checkArray.removeAt(index);
    });
    db.updateDatabase();
  }

  void changeTaskStatus(bool? value, int index) {
    setState(() {
      db.checkArray[index][1] =
          !db.checkArray[index][1]; // opposite of current value
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],

      appBar: AppBar(
        title: Text(
          'Todo List',
          style: TextStyle(fontSize: 21, color: Colors.white),
        ),
        backgroundColor: Colors.pink[500],
        elevation: 15,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask, // void error
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: db.checkArray.length,

          itemBuilder: (context, index) {
            return TodoCard(
              taskName: db.checkArray[index][0],
              isComplete: db.checkArray[index][1],
              deleteFun: (BuildContext) => deleteFun(index),
              onCheckbox: (bool? value) => changeTaskStatus(value, index),
            );
          },
        ),
      ),
    );
  }
}
