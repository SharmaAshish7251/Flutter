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
      title: 'Date & Time Picker',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'Date and Time Picker'),
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


      body: Center(
        child: Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Select Date'),

            ElevatedButton(onPressed: () async {

              DateTime? datePicked= await showDatePicker(
                  context: context,
                  initialDate: DateTime.now() ,
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2025),

              );

              if(datePicked!=null){
                print('Date selected ${datePicked.year} ${datePicked.day}');
              }


            },
                child: Text('Show')),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                children: [
                  ElevatedButton(onPressed: () async {

                    TimeOfDay? pickedTime = await showTimePicker(context: context,
                        initialTime: TimeOfDay.now(),
                      // initialEntryMode: TimePickerEntryMode.input, // input box

                      initialEntryMode: TimePickerEntryMode.dial,

                    );

                    if(pickedTime!=null){
                      print("Selected Time ${pickedTime.hour}, ${pickedTime.minute} ");
                    }

                  }, child: Text('show')),
                ],
              ),
            )

          ],
        ),

        ),
      ),
    );
  }
}
