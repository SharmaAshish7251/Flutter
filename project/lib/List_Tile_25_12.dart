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
      title: 'List Tile',
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: const MyHomePage(title: 'List Tile'),
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

;    var arrNames=['Akash','Raman','Akash','Raman','Vikash', 'Ravan','Akash','Raman','Vikash', 'Ravan','Vikash', 'Ravan'];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Column(
      //   children: [
      //
      //     // Container(
      //     //   margin: const EdgeInsets.all(10),
      //     //   // width: double.infinity,
      //     //   height: 90,
      //     //   decoration: BoxDecoration(
      //     //     border: Border(
      //     //       top: BorderSide(width: 2, color: Colors.greenAccent),
      //     //     ),
      //     //     color: Colors.blueGrey,
      //     //   ),
      //     //   child: Column(
      //     //     children: [
      //     //       ListTile(
      //     //         textColor: Colors.white,
      //     //         leading: Image.asset('assets/images/card.webp'),
      //     //         title: Text("User"),
      //     //         subtitle: Text("Devops"),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     // Container(
      //     //
      //     //   margin: const EdgeInsets.all(10),
      //     //   // width: double.infinity,
      //     //   height: 90,
      //     //   decoration: BoxDecoration(
      //     //     border: Border(
      //     //       top: BorderSide(width: 2, color: Colors.greenAccent),
      //     //     ),
      //     //     color: Colors.blueGrey,
      //     //   ),
      //     //   child: Column(
      //     //     children: [
      //     //       ListTile(
      //     //         textColor: Colors.white,
      //     //         leading: Image.asset('assets/images/card.webp'),
      //     //         title: Text("User"),
      //     //         subtitle: Text("Devops"),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     //
      //     // Container(
      //     //   margin:  const EdgeInsets.all(10),
      //     //   // width: double.infinity,
      //     //   height: 90,
      //     //   decoration: BoxDecoration(
      //     //     border: Border(
      //     //       top: BorderSide(width: 2, color: Colors.greenAccent),
      //     //     ),
      //     //     color: Colors.blueGrey,
      //     //   ),
      //     //   child: Column(
      //     //     children: [
      //     //       ListTile(
      //     //         textColor: Colors.white,
      //     //         leading: Image.asset('assets/images/card.webp'),
      //     //         title: Text("User"),
      //     //         subtitle: Text("Devops"),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     // Container(
      //     //
      //     //   margin: const EdgeInsets.all(10),
      //     //   // width: double.infinity,
      //     //   height: 90,
      //     //   decoration: BoxDecoration(
      //     //     border: Border(
      //     //       top: BorderSide(width: 2, color: Colors.greenAccent),
      //     //     ),
      //     //     color: Colors.blueGrey,
      //     //   ),
      //     //   child: Column(
      //     //     children: [
      //     //       ListTile(
      //     //         textColor: Colors.white,
      //     //         leading: Image.asset('assets/images/card.webp'),
      //     //         title: Text("User"),
      //     //         subtitle: Text("Devops"),
      //     //         trailing: Icon(Icons.insert_emoticon_sharp),
      //     //         iconColor: Colors.white,
      //     //
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //
      //
      //   ],
      // ),
   body: Container(
     width: 300,
     decoration: BoxDecoration(
      color: Colors.green,
     ),

     child: ListView.separated(itemBuilder: (context, index){



       return ListTile(
         leading: Text('${index+1}'),
         title: Text(arrNames[index]),
         subtitle: Text('Client'),
       );
     },

       separatorBuilder: (context,index){
         return Divider(
           height: 20,
           thickness: 3,
         );
       },
       itemCount: arrNames.length,
     ),
   ),

    );

  }
}
