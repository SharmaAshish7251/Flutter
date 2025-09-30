import 'package:flutter/material.dart';
import 'package:notessqllite/notesUI/widgets/notes_dialog.dart';
import '../database/database.dart';

class NotesMainUi extends StatefulWidget {
  const NotesMainUi({super.key});

  @override
  State<NotesMainUi> createState() => _NotesMainUiState();
}

class _NotesMainUiState extends State<NotesMainUi> {
  List<Map<String, dynamic>> arrNotes = [];

  List<Color> noteColors = [
    Colors.lightBlueAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.redAccent,
  ];

  // load db
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchNotes();
  }

  Future<void> fetchNotes() async {
    final fetchNotes = await notesDatabase.instance.getNotes();
    setState(() {
      arrNotes = fetchNotes;
    });
  }

  void showNotePopup({
    int? id,
    String? title,
    String? description,
    int colorIndex = 0,
  }) {
    showDialog(
      context: context,
      builder:
          (context) => notes_Dialog(
            id: id,
            title: title,
            description: description,
            noteColors: noteColors,

            colorIndex: 0,
            onSave: (newTitle, newDescription, currentDate, selectColor) async {
              if (id == null) {
                await notesDatabase.instance.addNote(
                  newTitle,
                  newDescription,
                  currentDate,
                  selectColor,
                );
              }
              fetchNotes();
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.withOpacity(0.1),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => showNotePopup(),
        child: Icon(Icons.add),
      ),
      body:
          arrNotes.isEmpty
              ? Center(child: Text('No notes found'))
              : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return Text('Babu');
                },
              ),
    );
  }
}
