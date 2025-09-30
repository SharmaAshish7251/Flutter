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
      title: 'ListView and its Components',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'List View and its Components'),
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
    var arrNames = ['Raj', 'Kalu', 'Akash', 'Rohit', 'Akash', 'Ishq'];

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // body: Container(
        //   width: 300,
        //   height: 300,
        //   color: Colors.limeAccent,
        //   child: ListView(
        //     reverse: true,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('data'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('data'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('data'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('data'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('data'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('data'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('data'),
        //       ),
        //     ],
        //   ),
        body:
            //
            //   ListView.builder(itemBuilder: (context, index)
            // {
            //   return Text(arrNames[index]);
            //
            //
            // },
            // itemCount: arrNames.length,
            //     itemExtent: 100,
            //     scrollDirection: Axis.horizontal,
            //  )

            ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text(arrNames[index],style: TextStyle(fontSize: 21, color: Colors.deepOrange),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrNames[index]),
                ),
                Text(arrNames[index],style: TextStyle(fontSize: 21, color: Colors.green),),

              ],
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 4,
            );
          },
        ));
  }
}
