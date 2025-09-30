import 'package:flutter/material.dart';
import 'package:jewel/components/bottom_menu.dart';

class EarningProduct extends StatelessWidget {
  const EarningProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ringcard = [
      {"image": "https://tinyurl.com/3yywy323"},
      {"image": "https://tinyurl.com/4uej8rv5"},
      {"image": "https://tinyurl.com/3zvh26tj"},
      {"image": "https://tinyurl.com/59j57xnd"},
      {"image": "https://tinyurl.com/55y2tfh4"},
    ];

    final List<Map<String, dynamic>> products = [
      {
        "name": "DG Diamond Ring",
        "category": "Ring",
        "price": "₹2399",
        "image": "assets/products/DG_Diamond_Ring.png",
      },
      {
        "name": "DG Locket",
        "category": "Locket",
        "price": "₹2199",
        "image": "assets/products/Dg_Locket.png",
      },
      {
        "name": "DG Necklace",
        "category": "Necklace",
        "price": "₹3399",
        "image": "assets/products/DG_Necklace.png",
      },
      {
        "name": "DG Earings",
        "category": "Earings",
        "price": "₹1399",
        "image": "assets/products/Earings.png",
      },
      {
        "name": "DG Golden Necklace",
        "category": "Necklace",
        "price": "₹4399",
        "image": "assets/products/Golden_Necklace.png",
      },
      {
        "name": "DG Locket",
        "category": "Locket",
        "price": "₹2399",
        "image": "assets/products/Locket.png",
      },
      {
        "name": "DG Pendant",
        "category": "Pendant",
        "price": "₹2399",
        "image": "assets/products/Pendant.png",
      },
      {
        "name": "DG Golden Necklace",
        "category": "Necklace",
        "price": "₹4399",
        "image": "assets/products/Golden_Necklace.png",
      },
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Earning Product'), centerTitle: true),
      bottomNavigationBar: BottomMenu(),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.black,
          child: Column(
            children: [
              // Product
              Container(
                margin: EdgeInsets.all(12),
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://tinyurl.com/yk6v9frs'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.yellow,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DG Diamond Stone Ring',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        '₹1399',
                                        style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(children: [Icon(Icons.favorite)]),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Wrap(
                            spacing: 8, // horizontal space
                            runSpacing: 8, // vertical space
                            children: List.generate(ringcard.length, (index) {
                              final ring = ringcard[index];
                              return SizedBox(
                                height: 60,
                                width: 60,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage('${ring['image']}'),
                                    ),
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: Colors.yellow,
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${index + 1}", // show number in box
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),

                          Text(
                            'A close-up of a woman wearing elegant gold earrings, highlighting their intricate design, shine, and style — perfect for showcasing jewelry.',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // End Product

              // Ring Size
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ring Size',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('4.0'),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('4.5'),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orangeAccent.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text(
                              '5.0',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('5.5'),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('6.0'),
                          ),
                        ],
                      ),
                      SizedBox(height: 09),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('6.0'),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('6.5'),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text(
                              '7.0',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('7.5'),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text('8.0'),
                          ),
                        ],
                      ),

                      // End Ring Size
                      SizedBox(height: 09),

                      // Specification
                      Container(
                        //  color: Colors.lime,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Specifications',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Ring Type :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Solitaire Diamond Ring",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Diamond Shape :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Round Brilliant Cut",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Diamond Carat :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 1.00 ct (customizable)",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Diamond Color Grade :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " D–F (Colorless)",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Diamond Clarity Grade :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " VVS1 – VS2 (Very High Clarity)",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Certification :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " IGI / GIA Certified",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // End Specification

                      // Material Quality
                      Container(
                        margin: EdgeInsets.only(top: 12),
                        //color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Material & Quality',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Metal Type :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 18K Yellow Gold",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Metal Purity :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 18K (75% Pure Gold)",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Ring Weight :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ~4.5 grams",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Finish :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " High Polish, Scratch Resistant",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 09),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Setting Type :",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 4-Prong Classic Setting",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // End Material Quality

                      // Highlights
                      Container(
                        margin: EdgeInsets.only(top: 12),
                        //color: Colors.yellowAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Highlights',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            Text(
                              'Handpicked ethically sourced diamonds',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Comfortable daily-wear design',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),

                            Text(
                              'Customizable in carat, clarity & metal choice',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Perfect gift for engagements, weddings, or anniversaries',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // End Highlights

                      // Related Products
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 09),
                          Text(
                            'Related Products',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(
                            height: 100, // or any height you need
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                final product = products[index];
                                return Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(product['image']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: 90,
                                  margin: EdgeInsets.all(03),
                                  child: Center(
                                    child: Text(products[index]['name']),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),

                      // End Related Products
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
