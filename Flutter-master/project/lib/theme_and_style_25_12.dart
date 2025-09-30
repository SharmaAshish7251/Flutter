import 'package:flutter/material.dart';
import 'package:project/custom_pac/custom_package.dart';


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
      title: 'Theme and Style',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.w100, fontSize: 12,),
          headlineLarge: TextStyle(fontWeight: FontWeight.w900, fontSize: 32,),
        )
      ),
      home: const MyHomePage(title: 'Theme and Style'),
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
          backgroundColor: Colors.redAccent, // we can change app bar color too.
        ),
        // Custom Font

        body: Row(
          children: [
            Column(
              children: [
                Text('Heading Nine', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.blueGrey),),
                Text('Heading Nine', style: mTextStyle21(),),
                Text('Heading Nine', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.redAccent),),
                Text('Heading Nine', style: mTextStyle11(
                  textColor: Colors.blue,
                ),), // custom font style

              ],
            ),
          ],
        ));
  }
}
