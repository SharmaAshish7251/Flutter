import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Alert dialog function for Question 7
  void _showAlert(BuildContext context, String itemName) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Tapped'),
        content: Text('You tapped $itemName'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InkWell Widget',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('📝 Practice Set: InkWell Widget'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Question 1
                Text('🔹 Q1. Wrap a Text widget with InkWell to print "Text Clicked" when tapped.'),
                InkWell(
                  child: Text('Inkwell Widget'),
                  onTap: () {
                    print('Text Clicked');
                  },
                ),

                SizedBox(height: 20),

                // Question 2
                Text(
                    '🔹 Q2. Create a Container with a background color and wrap it in InkWell to show a ripple effect when tapped.'),
                Material(
                  color: Colors.blue,
                  child: InkWell(
                    onTap: () {
                      print('Ripple Effect');
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Question 3
                Text(
                    '🔹 Q3. Use InkWell on an Image widget to open a dialog box when the image is clicked.'),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Image Clicked!'),
                            content: Text('You tapped on the image.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Image.asset(
                      'images/img.jpeg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Question 4
                Text(
                    '🔹 Q4. Build a Row with an icon and text. Wrap the whole row in an InkWell to navigate to a new screen on tap.'),
                InkWell(
                  onTap: () {
                    print('Dual Inkwell');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.face),
                      SizedBox(width: 8),
                      Text('Inkwell Dual'),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Question 5
                Text(
                    '🔹 Q5. Create a Card widget and wrap it with InkWell so it prints “Card tapped” in the console.'),
                InkWell(
                  onTap: () {
                    print('Card Tapped');
                  },
                  child: Card(
                    child: Image.asset(
                      'images/img.jpeg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Question 6
                Text(
                    '🔹 Q6. Use InkWell with onDoubleTap and print “Double Tapped”'),
                InkWell(
                  onDoubleTap: () {
                    print('Double Tapped');
                  },
                  child: Text('Double Tap'),
                ),

                SizedBox(height: 20),

                // Question 7
                Text(
                    '🔹 Q7. Design a ListView with 5 items. Make each item tappable using InkWell and show an alert with the item name.'),

                SizedBox(
                  height: 300, // Fixed height for ListView inside Column
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          _showAlert(context, 'Item 1');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text('Item 1'),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showAlert(context, 'Item 2 Icon');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.ac_unit),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showAlert(context, 'Item 3');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.insert_emoticon_sharp),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showAlert(context, 'Item 4');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image.asset('images/img.jpeg', height: 60),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showAlert(context, 'Item 5');
                        },
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.account_balance),
                        ),
                      ),
                    ],
                  ),
                ),
                // End Question 7


                // Question  8
                Text('🔹 Q8. Add onLongPress to an InkWell widget to change the color of a Container.'),
                InkWell(
                  onTap: (){
                    print('onLongPress');
                  },
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                // End Question 8

                // Question 9
                Text('🔹 Q9. Use InkWell to make a custom button with an icon and label that prints a message on tap.'),
                InkWell(
                  onTap: (){
                    print('Custom Button');
                  },
                  child: TextButton.icon(onPressed: (){
                    print('Inkwell Button');
                  }, label: Text('Inkwell Button'),
                  icon: Icon(Icons.add_business_sharp),
                  ),
                ),
                // End Question 9

                // Question  10
                Text('🔹 Q10. Combine InkWell with GestureDetector — use InkWell for visual feedback and GestureDetector for handling swipe gestures.'),
                // End Question 10

              ],
            ),
          ),
        ),
      ),
    );
  }
}
