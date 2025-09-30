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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images Assign 14th March',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('🧠 Flutter Image Handling Practice Questions Tut 33'),
        ),
        body: Container(
          child: Column(

            children: [

              // 1.What widget is used to display an image from local assets in Flutter?
              // a) AssetImage b) Image.asset() c) Image.network()     d) AssetPicture()
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('1. What widget is used to display an image from local assets in Flutter?'),
                 Text('b',
                 textAlign: TextAlign.start),
               ],
             ),

          // *2.Write the steps to add an image from the assets folder into a Flutter project.*
              Text('2. to add image from local storage there are 2 methods Image.asset and Image.network /n inside image.network we can also pass file location but its not fair practice'),
             // Example

             Row(
               children: [
                 // using regular method
                 Image.asset('/images/img.jpeg',
                   width: 50,
                   height: 50,
                 ),
                 // using Network method
                 Image.network('assets/images/img.jpeg',
                   width: 65,
                   height: 65,
                 ),

               ],
             ),
              // 3.*Where and how do you declare image assets in the pubspec.yaml file? Write an example.*
              Text('3.Goto pubsec.yaml and file assets under assets provide folder path -- ** three spacebar than  folder path'),

              // 4.*True or False:* You can load images directly from the internet using Image.asset().
              Text('No, to load images from Internet use Image.network() method'),
              // Example
              Image.network('https://www.letmegoogle.in/wp-content/uploads/2023/12/New-Let-me-google.png',
              width: 99,
              height: 39,),

              // 5. *Which image widget would you use to display an image from a URL?*
              // a) Image.asset() (b) Image.network()  (c) Image.file()  (d) Image.memory()
              Text('(b)Image>network'),
              // Example
               Image.network('https://www.letmegoogle.in/wp-content/uploads/2023/12/New-Let-me-google.png',
                 width: 99,
                 height: 39,),

              // #### 🟡 *Intermediate Level*
              // 6. *How do you set the height and width of an image in Flutter? Show with a code snippet.*
              Text('Image Height and Width in Flutter, Example below'),
              Image.asset('/images/img.jpeg',
              height: 45,
                width: 45,
              ),

              // 7.*Write a Flutter code snippet to display a circular profile image using ClipOval.*
              Text('Clipoval circular image'),
              ClipOval(
                child: Image.asset('/images/img.jpeg',
                width: 75,
                height: 65,),

              ),

              // 8. *Explain the difference between Image.asset(), Image.network(), and Image.file() with examples.*
             Row(
               children: [
                 // Image Asset
                 Image.asset('images/img.jpeg',
                 width: 45,
                 height: 45,),


                 // Image Network
                 Image.network('https://www.letmegoogle.in/wp-content/uploads/2023/12/New-Let-me-google.png',
                 width: 45,
                 height: 45,),

                 // Image File --- Displaying an image the user picked or saved.
                 // Image.file(
                 //   File('/storage/emulated/0/DCIM/user_image.jpg'),
                 //   height: 100,
                 // ),

               ],
             ),


              Image.network(
                'https://example.com/nonexistent-image.jpg',
                height: 200,
                width: 200,
                fit: BoxFit.cover,

                // Error handler if the image fails to load
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.broken_image, color: Colors.red, size: 50),
                      SizedBox(height: 8),
                      Text(
                        'Image failed to load!',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  );
                },
              ),


          // 10.*What are the possible values of the fit property in the Image widget, and what do they do?*
              Image.asset('images/img.jpeg',
              width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),


              // 11.*Write code to add multiple images from the assets and display them in a GridView.*
              // GridView(
              //   children: [
              //
              //   ],
              // ),

              // 12.*Explain how to use FadeInImage to display a placeholder image while the main image loads.*


              // 13.*What is the use of BoxFit.cover and BoxFit.contain in image styling? Give visual examples.*
              Text('13'),
              Row(
                children: [
                  // BoxFit cover
                  Image.asset('images/img.jpeg',
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),

                  // BoxFit Contain
                  Image.asset('images/img.jpeg',
                    width: 45,
                    height: 45,
                    fit: BoxFit.contain,
                  ),
                ],
              ),

              // 14.*How can you cache network images in Flutter for better performance? Mention any popular package.*

            ],
          ),
        ),
      ),
    );
  }
}
