// Maps and HashMaps in Dart

import 'dart:collection';

void main(){
  //
  // 1. *Basic Map Operations*
  // - Create a map with the following key-value pairs: {'Name': 'Alice', 'Age': 25, 'City': 'New York'}. Print the map.
     var mapkey={
       'Name' : 'Alice',
       'Age'  : '25',
       'City' : 'New York'
     };
     print('Answer 1:- Basic Map : $mapkey');
     
     // - Add a new key-value pair {'Country': 'USA'} to the map and print the updated map.
      mapkey['Country'] = 'USA';
      print('Updated map after adding value :$mapkey');

     // - Update the value of the key 'City' to 'Los Angeles' and print the updated map.
      mapkey['City'] = 'Los Angeles';
      print('Updated the value of the City $mapkey');

  //    2. *Accessing Map Values*
  // - Given a map {'Brand': 'Tesla', 'Model': 'Model S', 'Year': 2021}, print the value of the key 'Model'.
        var map={
          'Brand': 'Tesla',
          'Model': 'Model S',
          'Year': 2021,
        };


     print('Answer 2;- Model value is : ${map['Model']}'); // Model Number


  // - Write a code snippet to check if the key 'Color' exists in the map,
  // and if it doesn’t, add it with the value 'Red'. Then print the map. GPT
     print('Color not found :${map.containsKey}');

     if (!map.containsKey('Color')) { //ContainsKey method to find values
       // Add 'Color' key with the value 'Red' if it doesn't exist
       map['Color'] = 'Red';
     }
    print('Updated Map : $map');



  //    3. *Checking Map Properties*
  // - Create an empty map and check if it’s empty. If it is, add the key-value
  // pair {'Status': 'Active'} and print the map.

      var empmap={};
      print('Answer 3: Empty map : $empmap');

      if(empmap.isEmpty) {
        empmap['Status'] = 'Active'; // Only adds if the map is NOT empty
      }
      else
        {
          print('Map is not Empty');
      };

      print('Updated value is : $empmap');

  // - Given a map {'Product': 'Laptop', 'Price': 1200, 'InStock': true},
  // check if the map is not empty, then print "Map is not empty" along with the map.

      var checkmap={
        'Product': 'Laptop',
        'Price': 1200,
        'InStock': true
      };

    print('Map is Not Empty ${checkmap.isNotEmpty}');

  //    4. *Looping Through Map Keys and Values*
  // - Create a map with three key-value pairs:
  // {'Fruit': 'Apple', 'Quantity': 10, 'Price': 1.5}. Loop through the map and print each key with its value.
        var loopmap={
          'Fruit': 'Apple', 
          'Quantity': 10, 
          'Price': 1.5,
        };
        
        loopmap.forEach((key, value){
        print('$key, $value');
     });


  //    5. *Removing Elements*
  // - Given a map {'Item': 'Phone', 'Brand': 'Samsung', 'Price': 700},
  // remove the key 'Price' and print the updated map.
      var removemap= {
        'Item': 'Phone',
        'Brand': 'Samsung',
        'Price': 700,
      };

      print('Answer  5: Before Price removed from map $removemap');
      removemap.remove('Price'); // to remove
      print('After removing Price from map ${removemap}');

     // - Write a code snippet to remove a key-value pair only if the key 'Brand'
  // exists in the map. Then print the updated map.

     print('Before Price removed from map $removemap');

     if(removemap.containsKey('Brand'))
     {
     removemap.remove('Brand'); // to remove
     }
     print('After removing Price from map ${removemap}');

  //    6. *Using HashMap*
  // - Create a HashMap and add key-value pairs with integer keys and string values:
  // {1: 'One', 2: 'Two', 3: 'Three'}. Print the HashMap.

     var hashmap=HashMap(); // case sensitive
     hashmap[1] = 'One';
     hashmap[2] = 'Two';
     hashmap[3] = 'Three';

     print('Hashmap values are : $hashmap');

     // - Add a new entry {4: 'Four'} to the HashMap and print the updated HashMap.
      hashmap[4] = 'Four';
      print('New Value Added to hashmap : $hashmap');

     // Remove the key 2 from the HashMap and print the updated map.
      hashmap.remove(2);
      print('Key 2 value is removed $hashmap');

  //    7. *Using Properties and Methods*
  // - Given a map {'Course': 'Dart', 'Duration': '4 weeks', 'Fee': 200}, print the map’s keys, values, and length.
       var valength={
         'Course': 'Dart',
         'Duration': '4 weeks',
         'Fee': 200,
       };

       print('Map keys are : ${valength.keys}');
       print('Map Values are : ${valength.values}');

  // - Check the hashCode of a map and print it. Then, update a key-value pair
  // and print the new hashCode to see if it changes.
        print('Hashcode of map is :${valength.hashCode}');
        valength.update('Fee', (value) => '400');
        print('After Update Hashcode value : ${valength.hashCode}');


  //    8. *Practice Task*
  // - Create a map to store information about a book: {'Title': 'Dart Essentials', 'Author': 'John Doe', 'Pages': 250, 'InStock': true}.
         var bookmap={
           'Title': 'Dart Essentials',
           'Author': 'John Doe',
           'Pages': 250,
           'InStock': true,
         };

         print('Answer 8: Book Map :$bookmap');

  // - Add a key-value pair for 'Price' with the value 15.99.
        bookmap['Price']= '15.99';
        print('Price Added $bookmap');

  // - Update the 'Pages' key to 300.
        bookmap.update('Pages', (value)=> '300');
        print('Pages Updated $bookmap');


  // - Remove the 'InStock' key.
        bookmap.remove('InStock');
        print('InStock removed $bookmap');

  // - Print the final map.
        print('Final map $bookmap');

}


