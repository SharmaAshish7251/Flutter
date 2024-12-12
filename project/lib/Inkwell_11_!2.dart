
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'Inkwell'),
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

        body: Container(
          width: 500,
          height: 600,
          color: Colors.redAccent,
          child: InkWell(
            onTap: (){
              print('Tapped on Container');
            },
            onLongPress: (){
              print('Longpressed on Container');
            },
            onDoubleTap: (){
              print('Double click on container');
            },
          ),
        ),
    );
  }
}
