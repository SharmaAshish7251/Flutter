
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
      home: const MyHomePage(title: 'New App'),
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

        // body: TextButton(
        //   child: Text('Click Here'),
        //   onPressed: (){
        //     print('Button Pressed');
        //   },
        //   onLongPress: (){
        //     print('Hold ');
        //   },
        // )

        // Elevated Button
        // body: ElevatedButton(
        //   child: Text('Click Here'),
        //   onPressed: (){
        //     print('Button Pressed');
        //   },
        //   onLongPress: (){
        //     print('Hold ');
        //   },
        // )

        body: OutlinedButton(
          child: Text('Click Here'),
          onPressed: (){
            print('Button Pressed');
          },
          onLongPress: (){
            print('Hold ');
          },
        )

    );
  }
}
