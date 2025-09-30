import 'package:flutter/material.dart';

class NotesCard extends StatefulWidget {
  final Map<String, dynamic> note;
  final List<Color> notesColor;
  final Function onDelete;
  final Function onTap;

  const NotesCard({
    super.key,
    required this.note,
    required this.notesColor,
    required this.onDelete,
    required this.onTap,
  });

  @override
  State<NotesCard> createState() => _NotesCardState();
}

class _NotesCardState extends State<NotesCard> {
  @override
  Widget build(BuildContext context) {
    final colorIndex = widget.note['color'] as int;

    return GestureDetector(
      onTap: () => widget.onTap(),
      onDoubleTap: widget.onDelete(),
      child: Container(
        decoration: BoxDecoration(color: widget.notesColor[colorIndex]),

        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.note['date']),
              Text(widget.note['title']),
              Text(widget.note['description']),
              Text(widget.note['color']),
            ],
          ),
        ),
      ),
    );
  }
}
