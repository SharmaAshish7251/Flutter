
import 'dart:io';


//Data types and variables//

//Data types --- int, double - point value, bigint--- for big values, string -- arrary of characters,
//conditional value -- boolean type , collection types -- same type data store //
//

//variable -- namespace in memory //

void main(){

    print('Welcome to Data Types and Variables');

    stdout.write('enter var value');

    var val= stdin.readLineSync();
    print('Varibale Values is $val');

    Fun(); // creating an Class Object


  //Declaration of Variable

  // int a; // non null //

    int? a; // can be null if put question mark after Declaration of Variable

  //   Assign Value

    a=5; // Initilization

  print(a);


a=7; // we can override variable values , we can change values during runtime


print(a);

    BigInt LongValue;

    LongValue = BigInt.parse('647836470982384902348238098023948');

    print(LongValue);

    double pi=3322;

    print(pi);

    num percentage = 99.5; // num can store integer and point values

    print(percentage);


    //Login Check , login or Not using boolean

    // bool isLogin = false;
    // isLogin =true;


// Inline Declaration
 String name = 'LaraClaw';
 print(name);
 name='Scylla';

 print('Value after declare is $name'); //runtime value change
}

class Fun{


}