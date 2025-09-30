import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class notes_Dialog extends StatefulWidget {
  final int? id;
  final String? title;
  final String? description;
  final List<Color> noteColors;
  final Function onSave;
  final int colorIndex;

  const notes_Dialog({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.noteColors,
    required this.onSave,
    this.colorIndex = 3,
  });

  @override
  State<notes_Dialog> createState() => _notes_DialogState();
}

class _notes_DialogState extends State<notes_Dialog> {
 late int _selectedColorIndex;

 @override
  void initState() {
    // TODO: implement initState
    _selectedColorIndex = widget.colorIndex;
  }
 final currentDate = DateFormat('dd mmm yyyy').format(DateTime.now());
  final titlecontroller = TextEditingController();
  final desccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(backgroundColor: widget.noteColors[_selectedColorIndex],
    title: Text(widget.id == null ? 'Add Notes' : 'Edit Note'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(currentDate.toString()),

            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Task Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(09),
                  borderSide: BorderSide.none,
                )
              ),
            ),


            TextField(
              controller: desccontroller,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Task Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(09),
                    borderSide: BorderSide.none,
                  )
              ),
            ),


            ElevatedButton(onPressed: () async {
              final newTitle = titlecontroller.text; // to get controller text async to get all inputs
              final newDesc = desccontroller.text;

              widget.onSave(newTitle, newDesc, currentDate, _selectedColorIndex);
              Navigator.pop(context);

            }, child: Text('Save')),
          ],
        ),
      ),
    );
  }
}
