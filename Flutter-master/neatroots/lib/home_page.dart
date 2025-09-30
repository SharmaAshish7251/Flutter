import 'package:flutter/material.dart';
import 'package:neatroots/util/dialog.dart';
import 'util/todo_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();
  List<List<dynamic>> checkArray = [
    ['Alex', false],
    ['Scyalla', false],
    ['Sam', false],
    ['Robert', false],
    ['Mike', false],
    ['Romeo', false],
    ['Joe', false],
    ['Tyson', false],
    ['Keo', false],
    ['Rio', false],
    ['Mio', true],
  ];

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
      checkArray.add([
        _controller.text,
        false,
      ]); // issue array mai kyu liya, normal error
      _controller.clear();
      Navigator.of(context).pop();  // remove pop up
    });
  }

  // delete
  void deleteFun(){
    setState(() {
      checkArray.remove([[_controller.text, false]]);
    });
  }


  void changeTaskStatus(bool? value, int index){
    setState(() {
      checkArray[index][1] = !checkArray[index][1];
    });
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
      body: ListView.builder(
        itemCount: checkArray.length,
        reverse: true,
        itemBuilder: (context, index) {
          return TodoCard(
            taskName: checkArray[index][0],
            isComplete: checkArray[index][1],
            deleteFun: (BuildContext) {},
            onCheckbox: (bool? value) => changeTaskStatus(value, index),
          );
        },
      ),
    );
  }
}
