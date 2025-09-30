// Final vs Const Keywords

void main() {
  // 1. *Final Variable Initialization*
  // - Declare a final variable with your favorite city as its value, then print it.
  final city = 'Delhi';
  print('Answer 1 :- Final $city');

  // - Attempt to change the value of the final variable you just created and
  //  observe the result.
  //     city = 'New';

  //     2. *Const List*
  // - Create a const list of three colors and print it.

  const colors = [
    "Red",
    "Blue",
    "Green",

  ];

  print('Answer 2: - Color Values are : $colors');
  // - Attempt to add a new color to the const list and note what happens.
  // colors = ["Yellow"]; Error: Can't assign to the const variable 'colors'


  //     3. *Final with Mutable Collections*
  // - Declare a final list of integers [1, 2, 3].

  final mutable = [1, 2, 3];
  print('Answer 3:- $mutable');


  // - Add the number 4 to the list, then print the updated list.
  mutable.add(4);
  print('Number added : $mutable');


  //     4. *Const with Nested Collections*
  // - Create a const list containing three maps, each map having a name and age.
  //     const map1={
  //       'Name': 'Alice',
  //       'Age': '35',
  //     };
  //     print('Answer 4:- Map 2 : $map1');
  //
  //     const map2={
  //       'Name': 'Alice',
  //       'Age': '35',
  //     };
  //     print('Answer 4:- Map 2 : $map2');
  //
  //     const map3={
  //       'Name': 'Syclla',
  //       'Age': '30',
  //     };
  //     print('Answer 4:- Map 3 : $map3');
  //
  //

  const List<Map<String, dynamic>> people = [
    {
      'Name': 'John',
      'Age': 25,
    },
    {
      'Name': 'Alice',
      'Age': 35,
    },
    {
      'Name': 'Syclla',
      'Age': 30,
    },
  ];

  print('Answer 4:- Const List of Maps: $people');


  //     5. *Using Final in Classes*
  // - Define a class Car with a final variable model. Set model only in the constructor.
  // clascar.add('as'); we can't override data but can change using this.
  // Ai
  // class Car {
  // final String model;
  //
  // // Constructor to initialize the final variable 'model'
  // Car(this.model);
  // }
  //
  // void main() {
  // // Create an instance of Car and print the model
  // var myCar = Car('Toyota');
  // print('Car model: ${myCar.model}'); // Output: Car model: Toyota
  //
  // // Attempt to modify the model
  // // myCar.model = 'Honda'; // This line will cause a compile-time error
  // }
  //

  //
  // 6. Const with Expressions*
  //     - Create a const variable that stores the result of 100 * 5. Print it.

  const result = 100 *
      5; //result variable is declared as const and initialized with 100 * 5, which is a compile-time constant. This is valid


  print('Answer 6:- Const result value is : $result');

  //       - Try assigning DateTime.now() to a const variable and note what happens.
  // result = DateTime.now(); Error: Constant variables can't be assigned a value.

  print(DateTime.now());

  //     7. *List Behavior with Final vs. Const*
  // - Declare a final list and a const list, both initialized with [10, 20, 30].
  final listc = [10, 20, 30];
  print('Answer 7:- Final list values : $listc');

  listc.add(40);
  print('Final list data updated values $listc');

//         const list

  const listconst = [10, 20, 30];
  print('Const List values are : $listconst');

  // listconst.add(40);
  // print('Const List Updated values : $listconst'); // through error at run time.
  //unsupported operation: Cannot add to an unmodifiable list

  // 8. *Hash Code Comparison*
  // - Create a final list and a const list with identical values [1, 2, 3].
  final hashfinal = [1, 2, 3];
  print('Answer 8:-Hash of Final list  : ${hashfinal.hashCode}');

  // const list

  const constfinal = [1, 2, 3];
  print('Hash of Const List  : ${constfinal.hashCode}');

  // 9. Final Map Modification*
  // - Create a final map with keys 'title' and 'author'.
  final mapfinal = {
    'Title': 'Final map',
    'Author': "Linuxclaw"
  };

  print('Answer 9: Final map values : $mapfinal');

  // - Update the 'title' key in the map and print the updated map.
  mapfinal['Title'] = "Map";

  print('Final map values after update $mapfinal');

  //
  // 10. *Practice Task*
  // - Create a final variable for a DateTime.now() value and print it.
  final date2 = DateTime.now();
  print('Answer 10 :- Final Variable with Datatime now funcation : $date2');

  // - Try creating a const variable for DateTime.now() and see what happens.
  // const date3 = DateTime.now(); compile time error
  // print('Const with date time method $date3');

}


