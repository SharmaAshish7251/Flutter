import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'New App'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Align widgets at the start
        crossAxisAlignment: CrossAxisAlignment.start, // Align widgets to the left
        children: [
          Text(
            'Answer 1:- Welcome to Dart',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // Adds space between the widgets
          Text(
            'Answer 2:- Learn Flutter',
            style: TextStyle(
              backgroundColor: Colors.yellow,
              fontStyle: FontStyle.italic,

            ),
          ),

          SizedBox(height: 20), // Adds space between the widgets
          Text(
            'Answer 3:-Dart is Fun!',
            style: TextStyle(
              fontSize: 24,
            ),
          ),


          SizedBox(height: 20), // Adds space between the widgets
    //   - Display the text "Underlined Text" with the text underlined.
    // - Display the text "Strike Through Text" with a strikethrough decoration.
          Text(
            'Answer 4:-Crazy Display Style!',
            style: TextStyle(
              decoration: TextDecoration.underline,
              // decoration: TextDecoration.lineThrough, 2nd Answer
            ),
          ),

          SizedBox(height: 20), // Adds space between the widgets
          //     **Multiple Styles**
          // - Create a `Text` widget for "Stylish Text" with the following properties:
          // - Font color: Red
          // - Font weight: Extra bold
          // - Background color: Light grey
          // - Font size: 20
          Text(
            'Answer 5:-Stylish Text!',
            style: TextStyle(
             color: Colors.red,
              fontWeight: FontWeight.w800,
              backgroundColor: Color(0xFFCCCCCC),
              fontSize: 20,

            ),
          ),



          SizedBox(height: 20), // Adds space between the widgets
    // **Custom Font Style**
    // - Set the text "Hello, Dart!" to use a custom font family
          // (e.g., `Courier`) and set the font size to `18`.
          Text(
            'Answer 6:-Hello, Dart!',
            style: TextStyle(
            fontFamily: 'Courier',
              fontSize: 18,
            ),
          ),


          SizedBox(height: 20), // Adds space between the widgets
          //   7. **Letter Spacing and Word Spacing**
          // - Create a `Text` widget displaying "Spacing Example" with:
          // - Letter spacing: 2.0
          // - Word spacing: 5.0

          Text(
              'Answer 7:-Spacing Example!😁',
            style: TextStyle(
             letterSpacing: 2.0,
              wordSpacing: 5.0,
            ),
          ),

          SizedBox(height: 20), // Adds space between the widgets
          //   8. **Text Shadows**
          // - Create a `Text` widget for "Shadow Effect" with a shadow that:
          // - Has a blur radius of 5.0
          // - Is offset by `2.0` in both x and y directions
          // - Has a black color shadow

          Text(
            'Answer 8:-Shadow Effect!😎',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              shadows: [
                Shadow(
                  offset: Offset(2.0, 2.0), // x and y offset
                  blurRadius: 5.0,          // Blur radius
                  color: Colors.yellowAccent,     // Shadow color
                ),
              ],
            ),
          ),

    //
    //   9. **Text Alignment**
    // - Create a `Column` with three `Text` widgets:
    // - The first aligned to the start
    // - The second aligned to the center
    // - The third aligned to the end
    //
    //   10. **Gradient Text**
    //   - Create a gradient effect for text using a shader. Display the text "Gradient Text" with a purple-to-blue gradient.

    //
    //   ### **Challenge Task**
    // Create a `Column` with three `Text` widgets styled differently:
    // - The first widget: Display "Welcome!" with green color, bold weight, and size 28.
    // - The second widget: Display "Flutter Rocks!" with italic style, yellow background, and underlined text.
    // - The third widget: Display "Let's Build Apps" with a red shadow, extra bold weight, and font size 24.
    //
    // These exercises will help you explore different `TextStyle` properties in Flutter!
        ],
      ),
    );
  }
}
