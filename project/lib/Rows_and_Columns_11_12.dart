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
      home: const MyHomePage(title: 'Rows and Columns'),
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

      // Column
      // body:Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.limeAccent,
      //   child: Center(
      //     child: Column(
      //       children: <Text>[
      //         Text('1', style: TextStyle( fontWeight: FontWeight.bold ),),
      //         Text('2', style: TextStyle( fontWeight: FontWeight.w500),),
      //         Text('3', style: TextStyle( fontWeight: FontWeight.w700),),
      //         Text('4', style: TextStyle( fontWeight: FontWeight.w800),),
      //         Text('5', style: TextStyle( fontWeight: FontWeight.w900),),
      //       ],
      //     ),

      // body: Container(
      //   color: Colors.cyanAccent,
      //   width: 500,
      //   child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //
      //         children:  [
      //           Text('A', style: TextStyle( color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold ),),
      //           Text('B', style: TextStyle( fontWeight: FontWeight.w500),),
      //           Text('C', style: TextStyle( fontWeight: FontWeight.w700),),
      //           Text('2', style: TextStyle( fontWeight: FontWeight.w800),),
      //           Text('E', style: TextStyle( fontWeight: FontWeight.w900),),
      //           ElevatedButton(onPressed: (){
      //           print('Bye Bye!!!');
      //           }, child: Text('Click'))
      //         ],
      //
      //       ),
      // ),

      body: Container(
        color: Colors.cyanAccent,
        width: 500,
        child: Column(
          // Use a Column to stack multiple rows
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Space rows vertically
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('A',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold)),
                Text('B', style: TextStyle(fontWeight: FontWeight.w500)),
                Text('C', style: TextStyle(fontWeight: FontWeight.w700)),
                Text('2', style: TextStyle(fontWeight: FontWeight.w800)),
                Text('E', style: TextStyle(fontWeight: FontWeight.w900)),
                ElevatedButton(
                  onPressed: () {
                    print('Bye Bye!!!');
                  },
                  child: Text('Click'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Row 2 - X',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Row 2 - Y',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                ElevatedButton(
                  onPressed: () {
                    print('Hello from Row 2!');
                  },
                  child: Text('Click Row 2'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Row 3 - P',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Row 3 - Q',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                ElevatedButton(
                  onPressed: () {
                    print('Hello from Row 3!');
                  },
                  child: Text('Click Row 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
