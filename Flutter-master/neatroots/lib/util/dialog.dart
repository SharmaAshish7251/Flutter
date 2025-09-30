import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final inputTaskController;
  final VoidCallback onSave;

  const DialogBox({
    super.key,
    required this.inputTaskController,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Colors.pink[300],
      content: Container(
        height: MediaQuery.sizeOf(context).height * 0.35,
        decoration: BoxDecoration(

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.ac_unit, size: 30, color: Colors.pink[400]),
            TextField(
              controller: inputTaskController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your task',
                hoverColor: Colors.pink[400],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: ElevatedButton(
                      onPressed: onSave,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                          Icon(Icons.save),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
