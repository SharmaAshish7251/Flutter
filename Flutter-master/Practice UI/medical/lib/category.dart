import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/menu/bottom_navi_menu.dart';
import 'package:medical/menu/drawer_menu.dart';

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
      title: 'Product Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: GoogleFonts.josefinSansTextTheme(),
      ),
      home: const MyHomePage(title: 'Category'),
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
      appBar: AppBar(title: Text('Category')),
      drawer: DrawerMenu(),
      bottomNavigationBar: BottomNaviMenu(),

      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.medical_services),
                  SizedBox(height: 03),
                  Text(
                    'Tablets',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.medication_liquid),
                  SizedBox(height: 03),
                  Text(
                    'Syrups',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.syringe),
                  SizedBox(height: 03),
                  Text(
                    'Injections',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.pill),
                  SizedBox(height: 03),
                  Text(
                    'Capsules',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.health_and_safety),
                  SizedBox(height: 03),
                  Text(
                    'First Aid',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.dermatology),
                  SizedBox(height: 03),
                  Text(
                    'Skincare',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.nutrition),
                  SizedBox(height: 03),
                  Text(
                    'Vitamins',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.self_care),
                  SizedBox(height: 03),
                  Text(
                    'Personal Care',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.child_care),
                  SizedBox(height: 03),
                  Text(
                    'Baby Care',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.medical_services),
                  SizedBox(height: 03),
                  Text(
                    'Medical Devices',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Symbols.cannabis),
                  SizedBox(height: 03),
                  Text(
                    'Ayurvedic',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              color: Color.fromARGB(129, 186, 237, 250),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.more_horiz),
                  SizedBox(height: 03),
                  Text(
                    'Others',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
