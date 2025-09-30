import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linuxtodo/todoscreen/todo_screen.dart';



// make main function async
void main() async {
  // hive connection
  await Hive.initFlutter();

  var box = await Hive.openBox("myBox");

  runApp(taskManagement());
}

class taskManagement extends StatelessWidget {
  const taskManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Management',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: MainScreen(),
    );

  }

}
