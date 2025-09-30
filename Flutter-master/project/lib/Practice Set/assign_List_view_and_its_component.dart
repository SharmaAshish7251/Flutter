
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
      title: 'List and View',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'List and View'),
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

    var arrNames = ['Raj', 'Kalu', 'Akash', 'Rohit', 'Akash', 'Ishq'];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),

      // body:Container(
      // width: 300,
      // height: 300,
        // 1. *Change Background Color*
      // - Modify the Container in the commented-out ListView code to use a Colors.pinkAccent background instead of Colors.limeAccent.
      // color: Colors.pinkAccent,
      // child: ListView(
      //
      //   scrollDirection: Axis.horizontal,  // Answer 4
      //
      //   itemExtent: 150,   // Answer 3 itemExtent
      //   reverse: true,  // Answer 2 . Reverse Order
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('data9'),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('data'),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('data'),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('data'),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('data'),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('data'),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('data'),
      //     ),
      //   ],
      // ),


      body: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Row(
              children: [
                Text(
                  arrNames[index],
                  style: TextStyle(
                    fontSize: 16 + (index * 2).toDouble(), // Answer 5. Dynamic font size
                    color: Colors.deepOrange,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    arrNames[index],
                    style: TextStyle(
                      fontSize: 16 + (index * 2).toDouble(), // Dynamic font size
                    ),
                  ),
                ),
                Text(
                  arrNames[index],
                  style: TextStyle(
                    fontSize: 16 + (index * 2).toDouble(), // Dynamic font size
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 4,
          );
        },
      ),


      );
  }
}
