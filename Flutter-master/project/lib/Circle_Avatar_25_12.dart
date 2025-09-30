import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circle Avatar',
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      home: const MyHomePage(title: 'Circle Avatar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body:Center(
        child: CircleAvatar(
          child:
          Text("data", style: TextStyle(
            color: Colors.white,
          ),),
          backgroundColor: Colors.purpleAccent,
          backgroundImage: AssetImage('assets/images/card.webp'),

        ),
      )

    );

  }
}
