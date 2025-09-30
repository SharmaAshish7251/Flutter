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
      title: 'List View',
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

    var citiesArr2 = ['Delhi', 'Mumbai', 'Agra', 'Prayagraj', 'Dabri', 'Calcutta', 'Goa', 'Manali', 'Shimla', 'Kashmir'];
    var itemsArray = ['Skyway', 'Highway', 'Myway', 'YourWay', 'NoWay' ];
    var names = ['Akash', 'Pawan', 'Vikas', 'Rahul', 'Paras'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

    body:
      SingleChildScrollView(
    child:
      Container(
        child: Column(
          children: [

          // Question 1

          Text('1. *Basic ListView* Create a vertical ListView that displays 5 Text widgets with fruit names (Apple, Banana, Orange, Mango, Grapes).'),

            SizedBox(
            // height: 600,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Text('Apple'),
                Text('Banana'),
                Text('Orange'),
                Text('Mango'),

                Text('Grapes'),
              ],
            ),
          ),
          // End Question 1

            SizedBox(
              height: 90,
            ),

          // Question 2

            Text('2. *ListView.builder – Number List* Use ListView.builder to generate a list of numbers from 1 to 100. Each number should be inside a ListTile.'),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 100, // from 1 to 100
              itemBuilder: (context, index) {
                int number = index + 1; // because index starts from 0
                return ListTile(
                  leading: const Icon(Icons.format_list_numbered),
                  title: Text('Number $number'),
                );
              },
            ),
          // End Question 2


          // Question 3
          //   ListView.separated – City List
            Text('3. Use ListView.separated to display a list of 10 cities. Add a Divider() between each item.'),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:
           (context, index){
            return Text(citiesArr2[index]);
          }
              , separatorBuilder: (context, index) => Divider(
                thickness: 3,
                color: Colors.amber,
              ),
              itemCount: citiesArr2.length),
          // End Question 3


          // Question 4
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      'images/img.jpeg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text('Product ${index + 1}'),
                    subtitle: Text('Category: Electronics\nPrice: ₹499'),
                    trailing: const Icon(Icons.add_shopping_cart),
                    isThreeLine: true,
                  ),
                );
              },
            ),

            // End Question 4

            // Question 5
              Text('Create a horizontal scrolling ListView that displays a row of 10 colored containers. dart scrollDirection: Axis.horizontal'),
            SizedBox(
            height: 65,
            child:
            ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [

                        // 1st
                        Container(
                          width: 60,
                          height: 60,
                          color: Colors.lightBlueAccent,
                        ),
                        // End 1st

                        // 2nd
                        Container(
                          width: 60,
                          height: 60,
                          color: Colors.blueGrey,
                        ),
                        // End 2nd

                        // 3rd
                          Container(
                            width: 160,
                            height: 60,
                            color: Colors.pinkAccent,
                          ),
                        // End 3rd


                        // 4th
                          Container(
                            width: 60,
                            height: 60,
                            color: Colors.amber,
                          ),
                        // End 4th

                        //5th
                          Container(
                            width: 160,
                            height: 60,
                            color: Colors.green,
                          ),
                        // End 5th

                        // 6th
                          Container(
                            width: 360,
                            height: 60,
                            color: Colors.red,
                          ),
                        // End 6th

                        // 7th
                          Container(
                            width: 260,
                            height: 60,
                            color: Colors.cyanAccent,
                          ),
                        // End 7th

                        // 8th
                          Container(
                            width: 560,
                            height: 60,
                            color: Colors.lime,
                          ),
                        // End 8th

                        // 9th
                          Container(
                            width: 60,
                            height: 60,
                            color: Colors.deepPurple,
                          ),
                        // End 9th

                        // 10th
                          Container(
                            width: 560,
                            height: 60,
                            color: Colors.tealAccent,
                          ),
                        // End 10th

                  ],
                ),),
            // End Question 5


            // Question 6
                Text('6.Build a ListView that shows a list of images (can be from assets or network URLs).'),
            SizedBox(
              height: 190,
            child:

            ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                  Image.asset('images/img.jpeg'),
                ],
                ),
            ),
            // End Question 6


            // Question 7
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create a ListView.builder where each item contains a name and a RaisedButton that prints the name when tapped.'),
                ListView.builder(
                  itemCount: names.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(names[index]),
                        ElevatedButton(
                          onPressed: () {
                            // Print the current name
                            print('Name: ${names[index]}');
                          },
                          child: Text('Print Name'),
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ],
            )


            // End Question 7

          ],
        ),
      ),
      ),

      );
  }
}
