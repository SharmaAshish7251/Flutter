// Dart var vs Dart Dynamics
// void main(){
//
//
//   var section;
//
//   section = 3; // Integer
//
//   section= 'Linux'; // String
//   section = false;  // boolean
//
//   print(section);
//
//
//   var rollno=8;
//
//   rollno=3;
//
//   // rollno= 'hi'; // if you initialize value in variable at declaration it will assue that all upcoming values will be same.u can't store other data types. except integer.
//
//
// }


import 'dart:io';

void main(){

// 1. *Type Inference with var*
// - What is the difference in behavior between section and rollno when declaring them with var in Dart?
print('Answer 1:- in both section and roll no we can store any type of value but after declare data type we can not change data type.');


    // 2. *Type Locking*
    // - Why can rollno only accept integer values after its initial assignment, while section accepts values of different types?

    print('Answer 2:- Because if we initialize value at the declaration time at var, At that time we are declaring data type too.And, section accepts different types of values because it is a Dynamic variable.');

// 3. *Using Standard Input*
//   - *Q3:* Write code to take a string input from the user and print it with a greeting.


  print('Enter your Name');
  String? userinput=stdin.readLineSync();
  print('Answer 3:- Hello $userinput, Hope you are doing Good.');

  //
  // 4. *Dynamic Typing*
  // - How would declaring section as dynamic instead of var impact its behavior?

print('Answer 4:- We can declare using var  as well as dynamic both behavior is same. example is given.');

// var
  var section;

  section = 3; // Integer
  print(section);
  section= 'Linux'; // String
  print(section);
  section = false;  // boolean

  print(section);


// Dynamic

  dynamic section2;

  section2 = 3; // Integer
  print(section2);
  section2= 'Linux'; // String
  print(section2);
  section2 = false;  // boolean
  print(section2);



}