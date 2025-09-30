import 'package:flutter/material.dart';
import 'package:medical/menu/bottom_navi_menu.dart';
import 'checkout_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),
      bottomNavigationBar: BottomNaviMenu(),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Product Tab

              // Feature Image
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      width: MediaQuery.sizeOf(context).width * 1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://tinyurl.com/3z2u6ahh'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // End Feature Image

              // Start Description
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Start Title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Paracetamol Pill Bottle ',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CheckoutScreen(),
                                ),
                              );
                            },
                            child: Text(
                              '₹ 990',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ), // End Title
                      SizedBox(height: 13),
                      Divider(height: 3, color: Colors.blue),
                      SizedBox(height: 13),

                      Text(
                        'Paracetamol Tablets are a widely used pain reliever and fever reducer. Each tablet contains 500 mg of Paracetamol, an analgesic and antipyretic agent that helps relieve mild to moderate pain such as headaches, toothaches, muscle aches, backaches, menstrual cramps, and reduces fever caused by infections.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 6),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dosage Strength:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('500 mg (commonly used; adjust if needed)'),
                        ],
                      ),
                      SizedBox(height: 6),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Key Features:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1. Effective relief from mild to moderate pain and fever',
                          ),
                          Text('2. Easy-to-swallow tablets'),
                          Text('3. Safe and hygienic packaging'),
                          Text('4. Tamper-evident seal for product integrity'),
                        ],
                      ),

                      // End Key features
                      SizedBox(height: 9),

                      // Directions for Use:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Directions for Use:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Adults and children over 12 years: 1–2 tablets every 4–6 hours as needed. Do not exceed 8 tablets in 24 hours.',
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Children (6–12 years): ½ to 1 tablet every 4–6 hours as needed. Do not exceed 4 tablets in 24 hours.',
                          ),
                        ],
                      ),

                      // End Directions for Use
                      SizedBox(height: 10),

                      // Storage Instructions:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Storage Instructions:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Store in a cool, dry place below 25°C. Keep out of reach of children.',
                          ),
                        ],
                      ),

                      // End Storage Instructions
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              // End Description

              // End Product Tab
            ],
          ),
        ),
      ),
    );
  }
}
