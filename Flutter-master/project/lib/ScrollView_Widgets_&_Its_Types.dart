import 'package:flutter/material.dart';
import 'package:unsplash_client/unsplash_client.dart';
import 'package:http/http.dart' as http;


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
        // body: SingleChildScrollView(
        //   child: Column(
        //
        //     children: [
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.cyanAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.greenAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.blueAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.orangeAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.cyan,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.cyanAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.greenAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.blueAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.orangeAccent,
        //       ),
        //
        //       Container(
        //         width: 100,
        //         height: 220,
        //         color: Colors.cyan,
        //       ),
        //     ],
        //   ),
        // )
        body: SingleChildScrollView(
          child: Column(
            children: [

              SingleChildScrollView(
              scrollDirection: Axis.horizontal,


                child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.green,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.black45,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.lightBlueAccent,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.deepPurple,
                      
                      child: Column(
                        children: [
                          Image.asset('assets/images/card.webp'),
                        ],
                      ),
                      
                      ),
                
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.deepOrangeAccent,
                    ),
                  ],
                ),
              ),


              Container(
                // width: 100,
                height: 220,
                color: Colors.cyanAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.greenAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.blueAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.orangeAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.cyan,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.cyanAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.greenAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.blueAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.orangeAccent,
              ),
              Container(
                // width: 100,
                height: 220,
                color: Colors.cyan,
              ),
            ],
          ),
        ));
  }
}
