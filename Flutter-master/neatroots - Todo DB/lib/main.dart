import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neatroots/home_page.dart';

void main()  async{
  await Hive.initFlutter();  // initialization

  var box = await Hive.openBox("myBox");  // open box after initialization


  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
      ),
      title: 'Todo List',
      home: const MyHomePage(),
    );
  }
}
