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
      title: 'Grid View',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'Grid View'),
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
    //     body: GridView.count(
    //       crossAxisCount: 3,
    //       crossAxisSpacing: 20,
    //
    //       mainAxisSpacing: 20,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Container(
    //             color: Colors.red,
    //           ),
    //         ),
    //         Container(
    //           color: Colors.purpleAccent,
    //         ),
    //         Container(
    //           color: Colors.blueGrey,
    //         ),
    //         Container(
    //           color: Colors.pink.shade500,
    //         ),
    //         Container(
    //           color: Colors.yellow.shade500,
    //         ),
    //         Container(
    //           color: Colors.green.shade700,
    //         ),
    //         Container(
    //           color: Colors.greenAccent,
    //         ),
    //
    //         Padding(
    //         padding : const EdgeInsets.all(20),
    //         child :
    //         Container(
    //           color: Colors.red.shade200,
    //         )
    // ),
    //         Container(
    //           color: Colors.red.shade500,
    //         ),
    //         Container(
    //           color: Colors.purpleAccent,
    //         ),
    //       ],
    //     ),


      // body:GridView.extent(maxCrossAxisExtent: 1000,
      //
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //   Container(
      //
      //     color: Colors.yellow,
      //   ),
      //
      //   Container(
      //
      //     color: Colors.yellow.shade800,
      //   ),
      //   Container(
      //
      //     color: Colors.yellow.shade700,
      //   ),Container(
      //
      //     color: Colors.yellow.shade100,
      //   ),Container(
      //
      //     color: Colors.yellow.shade200,
      //   ),Container(
      //
      //     color: Colors.yellow.shade600,
      //   ),
      //
      //s
      //
      //
      // ],
      //
      // )
 

    );
  }
}
