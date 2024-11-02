import 'dart:ffi';
import 'dart:io';

// Q1:** What are some primary data types in Dart?
// Provide an example of each (e.g., `int`, `double`, `String`, `bool`, `BigInt`).

void main() {
//Int example
  int a;

  a = 3;

  print(a);

// Double

  double point = 4395490.3434;

  print(point);

  // String

  String name = 'Linuxclaw';

  print('Answer 1 $name');

// Bool

  bool isLogin = true;

//BigInt

  BigInt LongValue;

  LongValue = BigInt.parse('3838349080384358938458398902');

  print(LongValue);

// 2. **Variable Declaration and Initialization**
// - **Q2:** How do you declare a nullable integer variable in Dart?
// How is it different from a non-nullable integer?

  int? as; // Nullable Integer

  print('Answer 2 $as');

  int b; //Normal Integer we need to assign values after declare variable

  b = 3;

  print(b);

  // 3. **Using Standard Input**
  // - **Q3:** Write code to take a string input from the user and print it with a greeting.

  // var inputString= stdin.readLineSync();
  //
  // print(inputString);
  //

  //
  // 4. **Variable Assignment and Reassignment**
  // - **Q4:** Given an integer variable `a`, demonstrate how you can change its value during runtime.

  int value;

  value = 33;

  print('Answer 4, Value before change $value');

  value = 89;

  print('Value after Change $value');

  //
  // 5. **BigInt Usage**
  // - **Q5:** Explain the purpose of the `BigInt` type in Dart. Write code to parse a large number as a `BigInt`.

  // Ans :- BigInt uses for Storing value larger than int values which int can't store'

  // BigInt LongValue;
  //
  // BigInt = Longvalue.parse('487372393028398920948328');
  //
  // print(LongValue);

  //
  // 6. **Double and num Types**
  // - **Q6:** Describe the `double` and `num` data types in Dart. What is the difference, and when would you use each?
  //
  // Ans :- Duble used for storing point values or decimal values and  in num we can store both values either int or deicmal if (!values) {
  //

  //Double

  double deci = 34384938.349348433884;

  print('Answer 6, Decimal Value using double $deci');

  // Num

  num bothint;

  bothint = 4; // Int

  print(' Int value using num $bothint');

  num bothdecimal; // Decimal
  bothdecimal = 933433.4324;
  print('Decimal value using num $bothdecimal');

  //
  // 7. **Boolean Values**
  // - **Q7:** How do you declare a boolean variable? Write a code snippet to set a boolean variable to `true` or `false` based on a login status.

  //
  // 8. **String Variable Assignment and Modification**
  // - **Q8:** Write code to declare a string variable, assign it a value, and then reassign it with a new value. Why does Dart allow this?

  //
  // 9. **Variable Type Inference**
  // - **Q9:** Explain the `var` keyword in Dart. How does Dart determine the type of a variable declared with `var`?

  print(
      ' Answer 9, var keyword used for storing the values we can change variables values as per need. variable used for declaring variable not for their types means it only declare value by default int types.');

  //
  // 10. **Using num for Both Integer and Decimal Values**
  // - **Q10:** Demonstrate how to use the `num` type to store both an integer and a double. What makes `num` different from `int` or `double`?
// Ans :- num can store both types of values whether its integer or double , but int can only store integer value without decimal . Double can store int and deicmal values, it will convert int values to double if u provide integer value.
// Num

  num numhint;

  bothint = 4; // Int

  print('Answer 10, Int value using num $bothint');

  num numdecimal; // Decimal
  bothdecimal = 933433.4324;
  print('Decimal value using num $bothdecimal');

  double p = 2;

  print(p);

  //
  // 11. **Creating and Calling Classes**
  // - **Q11:** Write a simple Dart class called `Greeting` with a method that prints “Hello, welcome to Dart!”
  // Call this method from `main()`.

  //  Greeting(){
  //
  //   print('Hello, Welcome to Dart!');
  // }
  //
  // Greeting();

  //
  // 12. **String Interpolation**
  // - **Q12:** What is string interpolation? Write code to create a `String` variable `name` and print "Hello, [name]!"
  // by using string interpolation.
}
