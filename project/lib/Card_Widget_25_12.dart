
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
      title: 'Card Widget',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'Card Widget'),
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
          width: 200,
          // height: 100,
          child: Column(
            children: [
              Card(
                elevation: 3,
                shadowColor: Colors.greenAccent,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/card.webp',
                        width: 30,
                      ),

                      Text("Card Widget in Dart",style: TextStyle(
                        color: Colors.black,
                      ),
                      ),

                    ],
                  ),

                ),

              ),

              Card(
                elevation: 3,
                shadowColor: Colors.redAccent,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/card.webp',
                        width: 30,
                      ),

                      Text("Card Widget in Dart",style: TextStyle(
                        color: Colors.black,
                      ),
                      ),

                    ],
                  ),

                ),

              ),

              Card(
                elevation: 3,
                shadowColor: Colors.greenAccent,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/card.webp',
                        width: 30,
                      ),

                      Text("Card Widget in Dart",style: TextStyle(
                        color: Colors.black,
                      ),
                      ),

                    ],
                  ),

                ),

              ),

              Card(
                elevation: 3,
                shadowColor: Colors.greenAccent,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/card.webp',
                        width: 30,
                      ),

                      Text("Card Widget in Dart",style: TextStyle(
                        color: Colors.black,
                      ),
                      ),

                    ],
                  ),

                ),

              ),

            ],
          ),

        )

    );
  }
}
