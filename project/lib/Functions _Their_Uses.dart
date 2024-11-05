// What are Functions & Their Uses in Dart

void main() {
  print('Welcome to Dart Learning');

  var myCnorma=myClass(); // Object
  myCnorma.printNormal(); // Function Calling


  var myC = myClass(); // Object

  var value = myC.Add();
  print('Basic - Sum is : $value');

  var value2 = myC.Addwithpara(43, 89);
  print('Parameter Value :- Sum is  $value2');

  print(myC.Addwithpara(00, 89));

  print(myC.Addwithpara(102, 89));

  myC.printName("String Parameter"); // Function Calling
  //
  //
  //
  myC.printName("String Parameter : Flutter");
  //
  //
  //
  myC.printName("String Parameter : Web Developer");
  //
  //
  //
  myC.printName("String Parameter : App Developer");
}

class myClass {

  myClass(){ // default constructor

    print('myClass Object created');

  }

  void printNormal() {
    //Declaration
    print('Basic function : Lara Claw'); // Defination

  }
  void printName(String name) {
    //Declaration
    print(name); // Defination
  }

  int Add() {
    // without parameter

    int a, b;
    a = 4;
    b = 5;
    int sum = a + b;
    return sum;
  }

  int Addwithpara(int no1, int no2) {
    // with parameter

    int sum = no1 + no2;
    return sum;
  }
}
