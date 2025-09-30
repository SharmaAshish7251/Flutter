import 'package:flutter/material.dart';
import 'package:neatroots_notes/screens/database/notes_database.dart';
import 'package:neatroots_notes/screens/notes_card.dart';
import 'package:neatroots_notes/screens/widgets/notes_dialog.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<Map<String, dynamic>> notes = [];
  List<Color> noteColors = [
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.redAccent,
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.amberAccent,
    Colors.lightBlueAccent,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchNotes();
  }

  Future<void> fetchNotes() async {
    final fetchNotes = await NotesDatabase.instance.getNotes();
    setState(() {
      notes = fetchNotes;
    });
  }

  void showNoteDialog({
    int? id,
    String? title,
    String? description,
    int colorIndex = 0,
  }) {
    showDialog(
      context: context,
      builder:
          (context) =>
          NotesDialog(
            id: id,
            title: title,
            description: description,
            noteColor: noteColors,

            colorIndex: colorIndex,
            onSave: (newTitle,
                newDescription,
                currentDate,
                selectedColorIndex,) async {
              if (id == null) {
                await NotesDatabase.instance.addNote(
                  newTitle,
                  newDescription,
                  currentDate,
                  selectedColorIndex,
                );
              }
              else {
                await NotesDatabase.instance.updateNote(
                    id, newTitle, newDescription, currentDate, selectedColorIndex);
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
        backgroundColor: Colors.orangeAccent[50],
        title: Text(
          'Notes',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
        elevation: 3,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showNoteDialog(),
        child: Icon(Icons.add),
      ),

      body:
      notes.isEmpty
          ? Center(child: Text('No Notes found'))
          : GridView.builder(
        itemCount: notes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final note = notes[index];
          return NotesCard(
            note: note,
            notesColor: noteColors,
            onDelete: () async {
              await NotesDatabase.instance.deleteNote(note['id']);
              fetchNotes(); // to update db
            },
            onTap: () =>
                showNoteDialog(
                  id: note['id'],
                  title: note['title'],
                  description: note['description'],
                  colorIndex: note['color'] as int,
                ),
          );
        },
      ),
    );
  }
}
