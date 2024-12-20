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
      title: 'Row and Col Practice ',
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
        body: Container(

          width: 900,
          height: 250,
          color: Colors.white70,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                width: 490,
                height: 250,
                color: Colors.white70,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Strawberry Pavlova',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),


                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0), // Add padding around the text
                      child: Text(
                        'Our mentorship program connects individuals with experienced professionals who offer guidance, support, and inspiration for personal and career growth. Through meaningful interactions, participants gain valuable insights and develop skills to achieve their goals, fostering a supportive community of growth and success.',
                        style: TextStyle(
                          fontSize: 11, // Adjust font size
                          height: 1.5, // Adjust line height for better readability
                          color: Colors.black, // Text color
                        ),
                        textAlign: TextAlign.justify, // Align text as justified
                      ),
                    ),
                  ),

                  Container(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text('⭐'),
                            Text('⭐'),
                            Text('⭐'),
                            Text('⭐'),
                            Text('⭐'),
                          ],
                        ),


                        Row(
                          children: [
                            Text('170 '),
                            Text('Reviews',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(

                        children: [
                          Text('🧾'),
                          Text('Prep:'),
                          Text('25 min'),
                        ],
                      ),

                      Column(
                        children: [
                          Text('⏰'),
                          Text('Cook:'),
                          Text('1 Hr'),
                        ],
                      ),

                      Column(
                        children: [
                          Text('🥄'),
                          Text('Feeds:'),
                          Text('4-6'),
                        ],
                      )
                    ],
                  )

                ]


                ),


              ),
              Container(

                width: 400,
                height: 250,
                color: Colors.white70,

                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/row.png',
                      fit: BoxFit.fitHeight,

                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
