import 'package:flutter/material.dart';
import 'package:medical/menu/bottom_navi_menu.dart';
import 'package:medical/menu/drawer_menu.dart';
import 'package:medical/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garuda Pharmacy'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
      ),
      drawer: DrawerMenu(),
      bottomNavigationBar: BottomNaviMenu(),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12),
          width: MediaQuery.sizeOf(context).width * 1,
          child: Column(
            children: [
              SizedBox(height: 10),
              // Search Bar
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text('Search'),
                            prefixIcon: Icon(Icons.search),
                            fillColor: Colors.blue,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(width: 2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // End Search Bar
              SizedBox(height: 10),
              // Category
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(45, 115, 202, 245),
                        border: Border.all(width: 2, color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Medicines',
                          style: TextStyle(color: Colors.lightBlueAccent),
                        ),
                        icon: Icon(
                          Icons.medication_outlined,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),

                    SizedBox(width: 09),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Medicines',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        icon: Icon(
                          Icons.medication_outlined,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),

                    SizedBox(width: 09),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Labtes',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        icon: Icon(
                          Icons.local_hospital,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),

                    SizedBox(width: 09),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Checkup',
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                        icon: Icon(
                          Icons.local_hospital,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //End Category
              SizedBox(height: 10),
              // Slider
              Container(
                height: MediaQuery.sizeOf(context).height * 0.30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://tinyurl.com/bdd2yjv2'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              // End Slider

              // Product Tab
              ListView(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.2,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(17, 96, 125, 139),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        // left hand
                        Padding(
                          padding: EdgeInsets.only(right: 06),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://tinyurl.com/3z2u6ahh',
                                ),
                              ),
                            ),
                          ),
                        ),
                        // End left hand

                        // Description tab
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Prescription drugs on an orange background with a pill bottle. Orange pills.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star_outline,
                                      color: Colors.blueGrey,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                child: Row(
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductScreen(),
                                          ),
                                        );
                                      },
                                      label: Text('Add to cart'),
                                      icon: Icon(Icons.shopping_bag),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // End Description Tab
                      ],
                    ),
                  ),

                  // 2nd Card
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.2,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(17, 96, 125, 139),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // left hand
                        Padding(
                          padding: EdgeInsets.only(right: 06),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://tinyurl.com/3z2u6ahh',
                                ),
                              ),
                            ),
                          ),
                        ),
                        // End left hand

                        // Description tab
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Prescription drugs on an orange background with a pill bottle. Orange pills.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star_outline,
                                      color: Colors.blueGrey,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                child: Row(
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductScreen(),
                                          ),
                                        );
                                      },
                                      label: Text('Add to cart'),
                                      icon: Icon(Icons.shopping_bag),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // End Description Tab
                      ],
                    ),
                  ),

                  // End 2nd Card
                ],
              ),

              // End Product Tab
            ],
          ),
        ),
      ),
    );
  }
}
