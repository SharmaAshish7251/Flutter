import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotesDialog extends StatefulWidget {
  final int? id;
  final String? title;
  final String? description;
  final List<Color> noteColor;
  final Function onSave;
  final int colorIndex;

  const NotesDialog({
    super.key,
    this.id,
    this.title,
    this.description,
    required this.noteColor,
    required this.onSave,
    this.colorIndex = 0,
  });

  @override
  State<NotesDialog> createState() => _NotesDState();
}

class _NotesDState extends State<NotesDialog> {
  late int _selectedColorIndex; // late to assign data type later
  @override
  void initState() {
    super.initState();
    _selectedColorIndex = widget.colorIndex;
  }

  final currentDate = DateFormat('dd,mm,yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController(text:  widget.title);
    final descriptionController = TextEditingController(text:  widget.description);

    return AlertDialog(
      backgroundColor: widget.noteColor[_selectedColorIndex].withOpacity(0.8),
      // to access above data from parent use Widget
      title: Text(
        widget.id == null ? 'Add Note :)' : 'Edit Note',
        textAlign: TextAlign.center,
      ),

      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(currentDate.toString(), style: TextStyle(color: Colors.white)),
            SizedBox(height: 10),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            // Color Start
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Wrap(
                  spacing: 9,
                  children: List.generate(
                    widget.noteColor.length,
                        (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedColorIndex = index;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Circle with border if selected
                          Container(
                            decoration: BoxDecoration(
                              border: _selectedColorIndex == index
                                  ? Border.all(
                                width: 3,
                                color: Colors.white,
                              )
                                  : null,
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              backgroundColor: widget.noteColor[index],
                              radius: 8,
                            ),
                          ),

                          // Arrow shown only when selected
                          if (_selectedColorIndex == index)
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Icon(
                                Icons.arrow_drop_up,
                                size: 21,
                                color: Colors.white,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // End Color
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Edit'),
                    ),
                  ),
                  SizedBox(width: 3),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        final newTitle = titleController.text;
                        final newDescription = descriptionController.text;

                        widget.onSave(
                          newTitle,
                          newDescription,
                          currentDate,
                          _selectedColorIndex,
                        );
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      child: Text('Save'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
