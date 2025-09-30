import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
    const MyApp({super.key});

    @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter ScrollView Widget Practice Questions (Basic',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text('Flutter ScrollView Widget Practice Questions (Basic'),
        ),

        body:

        Container(
          child: Column(
            children: [
                //Question 1
              // Text('1. How do you make a Column scrollable vertically?'),
              //
              // SingleChildScrollView(
              //   scrollDirection: Axis.vertical,
              //   child:
              // Column(
              //   children: [
              //     // C1
              //     Container(
              //       width: 45,
              //       height: 145,
              //       color: Colors.red,
              //     ),
              //     // End C1
              //
              //
              //     // C2
              //     Container(
              //       width: 45,
              //       height: 145,
              //       color: Colors.greenAccent,
              //     ),
              //     // End C2
              //
              //
              //     // C3
              //     Container(
              //       width: 45,
              //       height: 245,
              //       color: Colors.pinkAccent,
              //     ),
              //     // End C3
              //
              //     // C4
              //     Container(
              //       width: 45,
              //       height: 345,
              //       color: Colors.amber,
              //     ),
              //     // C4
              //
              //   //   C5
              //     Container(
              //       width: 45,
              //       height: 445,
              //       color: Colors.indigoAccent,
              //     ),
              //   // End C5
              //
              //   //   C6
              //     Container(
              //       width: 45,
              //       height: 45,
              //       color: Colors.greenAccent,
              //     ),
              //   //   End C6
              //   ],
              // ),),
              // End Question 1

              // // Question 2
              //   Text('Which widget allows horizontal scrolling of multiple containers placed side by side?'),
              //
              //   SingleChildScrollView(
              //    scrollDirection: Axis.horizontal,
              //     child:
              //     Row(
              //     children: [
              //       // C1
              //       Container(
              //         width: 45,
              //         height: 45,
              //         color: Colors.grey,
              //       ),
              //       // End C1
              //
              //
              //       // C2
              //       Container(
              //         width: 45,
              //         height: 45,
              //         color: Colors.brown,
              //       ),
              //       // End C2
              //
              //       // C3
              //         Container(
              //           width: 45,
              //           height: 45,
              //           color: Colors.pink,
              //         ),
              //       // End C3
              //
              //       // C4
              //       Container(
              //         width: 45,
              //         height: 45,
              //         color: Colors.greenAccent,
              //       ),
              //       // End C4
              //     ],
              //     ),
              //   ),

              // End Question 2

              // Question 3
              Text('What is the difference between scrollDirection: Axis.horizontal and Axis.vertical?'),
              Text('Vertical : Top to bottom, Horizontal : Left to Right'),
              // End Question 3


              // Question 4
              Text('4. How would you create a horizontally scrollable list of images?'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: LayoutBuilder(builder: (context, index){
                  return Row(
                    children: [
                      // 1st
                      Image.asset('/images/img.jpeg',
                      width: 160,
                        height: 160,
                      ),

                      // 2nd
                      Image.asset('/images/img.jpeg',
                      width: 260,
                      height: 160,),

                      // 3rd
                      Image.asset('images/img.jpeg',
                      width: 360,
                      height: 160,),

                      // 4th
                      Image.asset('images/img.jpeg',
                      width: 460,
                      height: 160,
                      fit: BoxFit.cover,),

                      // 5th
                      Image.asset('/images/img.jpeg',
                      width: 460,
                      height: 160,),

                      // 6th
                      Image.asset('/images/img.jpeg',
                        width: 460,
                        height: 160,),

                    ],
                  );
                }),
              ),
              // End Question 4

              // Question 5
                  Text('5. Can Row scroll on its own? If not, how can you make it scrollable?'),
                  Text('Yes using axis.horizontal'),
              // End Question 5

              // Question 6
                  Text('What will happen if the content inside a Column exceeds the screen height without any scroll view?'),
              // End Question 6

              // Question 7
                  Text('7. Which widget would you use to scroll a single long widget?'),
                  Text('SingleChildScrollView'),
              // End Question 7

              // Question 8
                  Text('8. How do you display a list of 100 items efficiently with scrolling?'),
                  Text('using ListView.builder'),
              // End Question 8

              // Question 9
                  Text('9. How do you enable scrolling in both horizontal and vertical directions?'),
              // End Question 9

              // Question 10
                  Text('10. What’s the difference between SingleChildScrollView and ListView?'),
                  Text('SingleChildScrollView makes elements scrollable like container, images, listview etc'),
                  Text('ListView -- Shows data like list'),
              // End Question 10

            ],
          ),
        ),
      ),
    );
  }
}