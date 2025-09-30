import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final inputTaskController;
  final VoidCallback onSave;

  DialogBox({
    super.key,
    required this.inputTaskController,
    required this.onSave,
  });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.pink[50],
      contentPadding: EdgeInsets.all(09),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
      content: Container(
        height: MediaQuery.sizeOf(context).height * 0.43,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
                'assets/images/watermark.png',
                width: MediaQuery.sizeOf(context).width * 0.3,
                height: MediaQuery.sizeOf(context).width * 0.3,
                fit: BoxFit.cover,
              ),
            ),

            TextField(
              controller: widget.inputTaskController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),

                labelText: 'Enter your task',
                hoverColor: Colors.pink[400],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 09, top: 09),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      child: ElevatedButton(
                        onPressed: widget.onSave,

                        // button style
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
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

                        // End Button Style
                      ),
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
