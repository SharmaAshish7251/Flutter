
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button Practice Set',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body:Container(
    child: Column(
    children: [
     // 1.Basic Understanding
     // Create a TextButton that displays the text "Submit" and prints "Submitted!" when clicked.
        TextButton(
          child: Text('Submit'),
          onPressed:() {
            print('Submitted');
          },
        ),

    // 2.Long Press Action
    // Create an ElevatedButton labeled "Upload" that prints "Uploading..." when tapped, and "Upload Cancelled" when long-pressed.
        ElevatedButton(
          child: Text('Upload'),
          onPressed: (){
            print('Uploading');
          },
          onLongPress: (){
            print('Upload Cancelled');
          },
        ),


    // 3.Style Customization
    // Modify a OutlinedButton so it has red text and prints "Alert Triggered" on press.
      OutlinedButton(
        child: Text('Outlined Button'),
        // button style
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red,  // Text Color
        ),
        onPressed: (){
          print('Alert Triggered');
        },
      ),


    // 4.Button with Icon
    // Create a TextButton with an icon (e.g., Icons.send) and text "Send" that prints "Message Sent" when tapped.
      TextButton.icon(onPressed: (){
        print('Message Sent');
      }, label: Text('Send'),
      icon: Icon(Icons.send),

      ),


    // 5.Multiple Buttons Create three buttons vertically stacked:
    // "Start" → prints "Started", "Pause" → prints "Paused", "Stop" → prints "Stopped"
      Column(
        children: [
          TextButton(
            onPressed: (){
              print('Started');
            },
            child: Text('Start'),

          ),

          ElevatedButton(
            onPressed: (){
              print('Paused');
            },
            child: Text('Pause'),
          ),

          OutlinedButton(
            onPressed: (){
              print('Stopped');
            },
            child: Text('Stop'),
          ),



        ],
      ),

      // 6. Reusable Widget
      // Create a custom MyButton widget that takes label and callback function as parameters. Use it to render multiple buttons with different labels and actions.


      // 7.Stateful Action
      // Use a StatefulWidget with a counter and an ElevatedButton that increments the counter and prints the current value.

      // 8.Conditional Button Enable
      // Add an ElevatedButton that is disabled if a bool isEnabled = false and enabled when it’s true. Toggle the value using a switch.

      // 9.Snackbar Feedback
      // Create a TextButton that shows a SnackBar message saying "Action Completed" when tapped. ChatGPT
      TextButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Action Completed'),
            ),
          );
        },
        child: Text('Show Snackbar'),
      ),

      // 10.Different Button Types in One Screen
      // Place a TextButton, ElevatedButton, and OutlinedButton on the same screen with different labels and each printing a unique message on tap and long press.
        Row(
          children:[
          TextButton.icon(
            onPressed: (){
              print('TextButton');

            },
            onLongPress: (){
              print('TextButton Long Press');
            },
          label:
            Text('TextButton with Label'),

          ),

          ElevatedButton.icon(
            onPressed: (){
              print('Elevated Button ');

            },
            onLongPress: (){
              print('Elevated Longpress');
            },

            label: Text('Elevated Button with Label'),
          ),


            OutlinedButton.icon(
              onPressed: (){
                print('Outlined Button');
              },
              onLongPress: (){
                print('Outlined Long pressed');

              },

              label: Text('Outlined Button with Label'),
            ),
          ]
        ),
    ],
    ),
    ),);
  }
}
