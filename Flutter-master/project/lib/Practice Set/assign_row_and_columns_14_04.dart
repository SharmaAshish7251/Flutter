import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  }

class _MyAppState extends State<MyApp> {
@override

  Widget build(BuildContext context){
  return MaterialApp(
    title: 'Rows and Columns',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('What are Rows and Columns in Flutter? Tut 34'),
      ),

      body:
    SingleChildScrollView(
    scrollDirection:   Axis.vertical,
      child:

      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          // Question1
            Text('Q1. Create a Row with three colored boxes (red, green, blue), each 50x50.'),
          Row(
            children: [
              // Red
              SizedBox(
                width: 50,
                height: 50,
child: Container(
  decoration: BoxDecoration(
    color: Colors.red,
  ),
),
              ),


              // Green
              SizedBox(
                width: 50,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
              ),


              //Blue
              SizedBox(
                width: 50,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),



            ],
          ),
          // End Question 1


          //   Question 2
          Text('Q2. Create a Column with three Text widgets: “Flutter”, “is”, “Awesome”.'),
            Column(
              children: [
                Text('Flutter'),
                Text('is'),
                Text('Awesome'),
              ],
            ),

            // End Question 2

            // Question 3
            Text('🔹 Q3. Create a Row with 2 icons spaced apart using MainAxisAlignment.spaceBetween.'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.one_k),
                Icon(Icons.two_k),
              ],
            ),
            // End Question 3


            // Question 4
                Text('🔹 Q4. Create a Column with: A title (Text) An image from assets A button labeled “Click Me”'),
                Column(
                  children: [
                    Text('A Title'),
                    Image.asset('images/img.jpeg',
                    width: 45,
                    height: 45,
                    ),
                    ElevatedButton.icon(
                      onPressed: (){
                        print('Button Pressed');
                      },
                      label: Text('Click Me'),

                    ),
                  ],
                ),
            // End Question 4


            // Question 5
            Text('Q5. Create a centered Row that contains: A Text("Name:") A TextField() next to it'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Name'),

                // TextField(
                //   decoration: InputDecoration(
                //     labelText: 'Enter your Name',
                //     border: OutlineInputBorder(
                //
                //     ),
                //   ),
                // ),
              ],
            ),
            // End Question 5

            // Question 6
            Text('🔹 Q6. Create a Column with 5 Containers stacked vertically, each with different background colors and height: 60.'),
            Column(
              children: [
                // Container 1
                Container(
                  height: 60,
                  color: Colors.redAccent,
                ),

                //Container 2
                Container(
                  height: 60,
                  color: Colors.blueAccent,
                ),

                // Container 3
                Container(
                  height: 60,
                  color: Colors.amberAccent,
                ),

                // Conatiner 4
                Container(
                  height: 60,
                  color: Colors.pinkAccent,
                ),

                // Container 5
                Container(
                  height: 60,
                  color: Colors.greenAccent,
                )
              ],
            ),
            // End Question 6


            // Question 7
            Text('🔹 Q7. Use a Row inside a Column: Column has a header text'),
            Column(
              children: [
                Text('Header Text'),
                Row(
                  children: [
                    Text('Row Inside Column'),
                    Text('😎🤖👻'),

                  ],
                ),
              ],
            ),
            // End Question 7


            // Question 8
            Text('🔹 Q8. Create a Column with even vertical spacing between 3 buttons: “Start” “Pause” “Stop”'),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // Start
                TextButton(onPressed: (){
                  print('Start Button Clicked');
                }, child: Text('Start')),

                //Pause
                ElevatedButton(onPressed: (){
                  print('Pause Button Pressed');
                }, child: Text('Pause')),


                //Stop
                OutlinedButton(onPressed: (){
                  print('Stop Button Pressed');
                }, child: Text('Stop')),

              ],
            ),
            // End Question 8


            // Question 9
            Text('🔹 Q9. Build a profile card: Row with circular avatar on the left Name and email in a Column on the right'),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/img.jpeg'),

                  child:
      
                      Expanded(
                        child:
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Ashish'),
                            Text('info@ashishsharma.in'),
                          ],
                        )
                      ],
                    ),),

                ),
              ],
            ),
            // End Question 9


            // Question 10
            Text('🔹 Q10. Create a layout with: A Column inside a Center widget First child: Flutter logo Second child: Row with 2 buttons “Yes” and “No”'),
            Center(
              child: Column(
                children: [
                  Image.network('https://storage.googleapis.com/cms-storage-bucket/6a07d8a62f4308d2b854.svg'),
                  Row(
                    children: [
                      ElevatedButton(onPressed: (){
                        print('Yes');
                      }, child: Text('Yes')),

                      ElevatedButton(onPressed: (){
                        print('No');
                      }, child: Text('No')),
                    ],
                  ),
                ],
              ),
            ),
            // End Question 10
          ],
        ),
      ),),
    ),
  );
}

}

