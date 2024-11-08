
// Functions and Their Uses

// What are Functions & Their Uses in Dart



void main() {
// 1. *What is the purpose of the main() function in Dart, and why is it required in every Dart program?*

  // 2. What is the role of the myClass constructor in this code?
  // Explain how it is used when an object of myClass is created.

  print('Answer 2:- in this code we are just showing how constructor creates by default,when function object creates  Constructor by default creates,to access data from another function we make class object ');

  // 3. *How would you call the Add function from myClass without passing any parameters?
  // What does this function return?*
  print('Answer 3:- first we need to create object of class then we can call add function');


  var myc=myClass();
  print(myc.Add());

  // 4. Explain the difference between the Add and Addwithpara functions in myClass. When would you use each one
  print('Answer 4:- Add function performs simple addition using pre assigned value, with Addwithpara we can pass values through parameteres');

  // 5. How does the printName function work? Write an example of calling this function with a different string parameter.*

  var str=myClass();
  str.printName('Answer 5:- Hi we are here');

  // 6. *What output does the statement print(myC.Addwithpara(102, 89)); produce, and why?*
  print('Answer 6:- Output will be 191 becuase its a sum function Adddwithara do addition of two values in this we can only pass 2 different values');
  
  // 7. Explain what the line var myCnormal = myClass(); does. What is the difference between myCnorma and myC in this code?*

  print('Answer 7:- var myCnorma = myClass(); myclass function object created and stored into myCnorma varaiable so if we can to use myClass we can directly call myCnorma insted of myClass. myCnorma and my both are objects. ');

  // 8. What is a function declaration in Dart? Identify the declaration of the printNormal function and explain its role.*
  print('Answer 8:- Function declaration means declaration of method, printNormal function show only simple function ');


  // 9. How would you modify the Add function to accept two parameters instead of using predefined values for a and b?*
  print('Answer 9:- ');
  var para=myClass();
  print(para.Addwithpara(88, 100));


  // 10. Describe what happens when myC.printNormal() is called in the main() function. What output does this produce?*
  print('Answer 10:- Will print normal function ');


  // 11. How does Dart handle parameterized functions like Addwithpara? Explain what happens if you try to call Addwithpara without passing any arguments.
  print('Answer 11:- if parameter values nor passsed than error will be shown, position error');

  // 12. *Why does the Addwithpara function use the int data type? What would happen if you passed non-integer arguments to this function?*
  print('Answer 12:- In Addwithpara function we use to sum 2 values and take it through parameter,if we pass non integer value it will show data type error.');

}


// Answer 3 : Outside Void main
class myClass{

  int Add(){
  int a,b;
  a=3; b=4;
  int sum=a+b;

  return sum;
  }

  void printName(String name) {
    //Declaration
    print(name); // Defination
  }

  int Addwithpara(int no1, int no2){

    int sumpara=no1+no2;

    return sumpara;
  }

}