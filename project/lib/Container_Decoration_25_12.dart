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
      title: 'Container Decoration',
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: const MyHomePage(title: 'Conatiner Decoration'),
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
        body: Center(
          child: Container(
            width: 500,
            height: 500,
            // color: Colors.lightBlue,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(250),
                border: Border(
                    left: BorderSide(width: 20, color: Colors.greenAccent)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 33,
                    color: Colors.deepOrangeAccent,
                    spreadRadius: 11,

                  )
                ]
              ),
              child: Center(
                  child: Text(
                "Decoration",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.white70,
                ),
              )),
            ),
          ),
        ));
  }
}
