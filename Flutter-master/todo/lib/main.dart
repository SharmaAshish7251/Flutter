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
        title: 'Task Management',

        theme: ThemeData(

    useMaterial3: true,
    ),
    home: const MyHomePage(title: 'Task Management'),
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
      backgroundColor: Colors.blue[50],

        title: Text(widget.title),

      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Image
            Column(
              children: [
                Image.asset(
                  'assets/task.png',
                  height: MediaQuery
                      .sizeOf(context)
                      .height * 0.65,
                ),
              ],
            ),

            // End Image

            // Title and Description
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                width: MediaQuery
                    .sizeOf(context)
                    .width * 0.9,
                child: Column(
                  children: [
                    Text(
                      'Welcome to TODO',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Center(
                      child:
                      Text(
                        "Manage your tasks effortlessly. Create, edit, and complete your to-dos with just a few taps.Whether it's daily chores, work goals, or personal reminders",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),),
                  ],
                ),
              ),
            ),

            // End Title and Description

            // Bottom Button
            Container(
              width: MediaQuery
                  .sizeOf(context)
                  .width * 0.9,

              child: Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Let's Start",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            // End Bottom Button
          ],
        ),
      ),
    );
  }
}
