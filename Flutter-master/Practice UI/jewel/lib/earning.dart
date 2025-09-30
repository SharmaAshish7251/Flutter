import 'package:flutter/material.dart';

class Earning extends StatelessWidget {
  const Earning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://tinyurl.com/3kzmhhav'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
Container(
  
  // color: Colors.black,
  margin: EdgeInsets.only(
    top: 30,
  ),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
  
  Icon(Icons.arrow_back_ios,
  color: Colors.white,
  ),
  Text('Earning',
  style: TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  ),
  Icon(Icons.favorite,
  color: Colors.white,
  ),
],
),
),


Container(
  margin: EdgeInsets.all(15),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Colors.white,
  ),
  child: 
Row(
  children: [
    Container(
      margin: EdgeInsets.all(12),
      width: MediaQuery.sizeOf(context).width * 0.33,
      height: MediaQuery.sizeOf(context).height * 0.2,
decoration: BoxDecoration(
   borderRadius: BorderRadius.circular(15),
),
child: ClipRRect(
  borderRadius: BorderRadius.circular(15),
  clipBehavior: Clip.antiAlias,
  child: Image.network('https://tinyurl.com/uhd6b3t3',
fit: BoxFit.cover,
  ),
),
    ),

    Expanded(child: 
    Container(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('DG Earings',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
    ),
    ),
    Text('A close-up of a woman wearing elegant gold earrings, highlighting their intricate design, shine, and style — perfect for showcasing jewelry.',
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    ),
    Text('₹1399',
    style: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    ),

  ],
),
    ),),
  ],
),),
        ],
      ),
     ),
    );
  }
}