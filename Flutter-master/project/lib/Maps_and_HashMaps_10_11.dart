// Maps and HashMaps in Dart Programming

import 'dart:collection';

void main(){


  var map_name={
// in map we can use any type of data, no specific data required
// Case Sensitive

    'Name': 'Value1', // String
    'YearofExperience' : '2', // // int values
    'Avg.Rating' : '3.0', // Float / Decimal
    'Can_Locate' : 'true'  // Boolean

  };

  print('Map Values are : $map_name');
  print((map_name['Key3'])); // Data through key

  map_name['Name'] = 'Rahul';
  print('Map updated values while compiling : $map_name'); // run time value assign

  print('Map is Not Empty : ${map_name.isNotEmpty}');
  print('Map is Empty : ${map_name.isEmpty}');
  print('Map Length is : ${map_name.length}');
  print('Map Keys are : ${map_name.keys}');
  print('Map Hashcode is : ${map_name.hashCode}');
  print('Runtime Type  : ${map_name.runtimeType}');
  print('Map Values are : ${map_name.values}');


  var hashmap=HashMap();
  hashmap[1] = 'A';
  hashmap[2] = 'B';

  print('Hashmap values are : $hashmap');

}