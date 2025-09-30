import 'package:flutter/material.dart';
import 'package:medical/checkout_screen.dart';
import 'package:medical/create_an_account.dart';
import 'package:medical/home_screen.dart';
import 'package:medical/login_screen.dart';
import 'package:medical/product_screen.dart';
import 'package:medical/shop.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: DrawerHeader(
                curve: Curves.bounceIn,
                child: SizedBox(
                  child: Image.asset('assets/Logo.png', fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                label: Text('Home'),
                icon: Icon(Icons.home),
              ),

              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopScreen()),
                  );
                },
                label: Text('Shop'),
                icon: Icon(Icons.shopping_bag),
              ),

              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductScreen()),
                  );
                },
                label: Text('Product'),
                icon: Icon(Icons.local_pharmacy),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CheckoutScreen()),
                  );
                },
                label: Text('Checkout'),
                icon: Icon(Icons.shopping_bag),
              ),
            ],
          ),

          Row(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                label: Text('Log In'),
                icon: Icon(Icons.add_home),
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAnAccount()),
                  );
                },
                label: Text('Create An Account'),
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
