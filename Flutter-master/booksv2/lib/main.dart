

import 'package:books/prrovider/book_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:books/firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:books/screens/home_screen.dart';





void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookProvider()),
        // ChangeNotifierProvider(create: (_) => CategoryProvider()),

      ],
      child: MaterialApp(
        title: 'Book App',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: HomeScreen(),
      ),
    );
  }
}
