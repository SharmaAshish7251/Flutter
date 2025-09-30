import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:medical/checkout_screen.dart';
import 'package:medical/home_screen.dart';

class BottomNaviMenu extends StatefulWidget {
  const BottomNaviMenu({super.key});

  @override
  State<BottomNaviMenu> createState() => _BottomNaviMenuState();
}

class _BottomNaviMenuState extends State<BottomNaviMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              icon: Icon(Symbols.home_health_rounded, color: Colors.blue),
            ),

            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutScreen()),
                );
              },
              icon: Icon(Symbols.shopping_bag_speed, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
