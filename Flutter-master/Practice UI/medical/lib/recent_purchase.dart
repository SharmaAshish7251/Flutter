import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:medical/menu/drawer_menu.dart';
import 'shop.dart';

class RecentPurchase extends StatefulWidget {
  const RecentPurchase({super.key});

  @override
  State<RecentPurchase> createState() => _RecentPurchaseState();
}

class _RecentPurchaseState extends State<RecentPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Text('Recent Purchase'),
        centerTitle: true,
      ),
      drawer: DrawerMenu(),

      body: Container(
        color: Colors.white10,
        child: ListView.builder(
          itemCount: 9,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(09),

              width: MediaQuery.sizeOf(context).width * 1,
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade200,
                    spreadRadius: 01,
                    blurRadius: 2,
                    offset: Offset(00, 03),
                  ),
                ],
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  // left hand
                  Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.43,
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://tinyurl.com/3z2u6ahh'),
                            fit: BoxFit.cover,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Prescription drugs on an orange background with...',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Text(
                          'Delivered on Monday',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueGrey,
                          ),
                        ),

                        SizedBox(height: 09),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShopScreen(),
                                  ),
                                );
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              icon: Icon(
                                Symbols.download,
                                color: Colors.blue,
                                size: 12,
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShopScreen(),
                                  ),
                                );
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              icon: Icon(
                                Symbols.share,
                                color: Colors.blue,
                                size: 12,
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShopScreen(),
                                  ),
                                );
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              icon: Icon(
                                Symbols.delete,
                                color: Colors.blue,

                                size: 12,
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShopScreen(),
                                  ),
                                );
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              icon: Icon(
                                Symbols.more_vert,
                                color: Colors.blue,

                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // End Description Tab
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
