import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String taskName;
  final bool isComplete;
  final Function(bool?) onCheckbox;
  final Function(BuildContext)? deleteFun;

  const TodoCard({
    super.key,
    required this.taskName,
    required this.isComplete,
    required this.onCheckbox,
    required this.deleteFun,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(06),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Checkbox(value: isComplete, onChanged: onCheckbox),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                taskName,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print('Delete');
              },
              child: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
