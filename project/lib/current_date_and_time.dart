import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
      title: 'Current Date & Time',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'How to get current Date & Time'),
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

    var time= DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),


      body: Container(child: Column(
        children: [
          // Text('time ${time.hour}, minute ${time.minute}, seconds ${time.second}'),

          // Text('Current date and Time \n ${DateFormat('yMMMMEEEEd').format(time)}'), day date year
          // Text('Current date and Time \n ${DateFormat('QQQQ').format(time)}'), //Quarter
          Text('Current date and Time \n ${DateFormat('jms').format(time)}'),

          ElevatedButton(onPressed: (){



            setState(() {

          });
          }, child: Text("Current Time & Date")

          ),
        ],
      ),

      ),
    );
  }
}
