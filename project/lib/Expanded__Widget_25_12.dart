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
      title: 'Expanded Widget',
      theme: ThemeData(
        primaryColor: Colors.black26,
      ),
      home: const MyHomePage(title: 'Expanded Widget'),
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
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
              ),
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white60,
                    width: 1,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightGreen,
                      Colors.pinkAccent,
                      Colors.blueAccent
                    ],
                    begin: Alignment.topCenter,
                  ),
                  color: Colors.redAccent,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purpleAccent,
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        border: Border(
                          right: BorderSide(
                            width: 2,
                            color: Colors.lightBlueAccent,
                          ),
                          left: BorderSide(
                            width: 2,
                            color: Colors.lightBlueAccent,
                          ),
                          top: BorderSide(
                            width: 2,
                            color: Colors.lightBlueAccent,
                          ),
                        )),
                  ),
                ),
          
                Container(
                  width: 100,
                  height: 110,
                  color: Colors.blueGrey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
