import 'package:flutter/material.dart';
import 'package:neatroots_notes/screens/notes_screen.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeatRoots - Notes SQF DB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white70,
      ),
      home: NotesScreen(),
    );
  }
}
