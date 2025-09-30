import 'package:flutter/material.dart';
import 'package:notessqllite/notesUI/notes_main_ui.dart';

void main(){
  runApp(notesApp());
}

class notesApp extends StatelessWidget{
  const notesApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      scaffoldBackgroundColor: Colors.yellow.shade50,
      ),
        home: NotesMainUi(),
    );
   
  }
}

