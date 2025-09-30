// Assignment  Conditional Programming in dart

void main() {
  // 1. What will be the output if a = 300 in the first if-else block?
  // Basic Conditionals*
  var a = 300;

  if (a > 200) {
    // Condition 1
    print('Answer 1:- Condition 1 is true $a');
  } else if (a > 50) {
    // Condition 2
    print(' Basic Loop : 2 $a');
  } else if (a > 80) {
    // Condition 3
    print('3 $a');
  } else {
    // all conditions are false
    print('false');
  }

  // 2.If aa = 60, which condition will be executed in the first if-else block?
  var aa = 60;

  if (aa > 200) {
    // Condition 1
    print('1 $aa');
  } else if (aa > 50) {
    // Condition 2
    print('Answer 2:- Condition 2 will execute  $aa');
  } else if (a > 80) {
    // Condition 3
    print('3 $aa');
  } else {
    // all conditions are false
    print('false');
  }

  // 3.Modify the first if-else block to print a message if a < 10. How would you implement this?
  var lessa = 3;

  if (lessa < 10) {
    // Condition 1
    print('Answer 3:- Condition 1 will execute $lessa');
  } else if (lessa > 50) {
    // Condition 2
    print('Condition 2 will execute  $lessa');
  } else if (lessa > 80) {
    // Condition 3
    print('3 $lessa');
  } else {
    // all conditions are false
    print('false');
  }

  // *Multiple Conditions*
  // 4.What is the output of the second if-else block if ab = 80 and ba = 150?
// 2 Conditions
  var ab = 80;
  var ba = 150;

  if (ab > 200 && ba > 100) {
    // Condition 1 and Condition 2
    print('1 ');
  } else if (ab < 50) {
    // Condition 2
    print('2 $ab,$ba');
  } else if (ab > 80) {
    // Condition 3
    print('3 2 Conditions Loop');
  } else if (ab == 500) {
    print('4');
  } else {
    // all conditions are false
    print('Answer 4:- No Condition  will execute Else part will run');
  }

  // 5. How can you modify the second if-else block to include a condition
  // where mab == 100 && mba == 50?
  var mab = 100;
  var mba = 50;

  if (mab == 100 && mba == 50) {
    // Condition 1 and Condition 2
    print('Answer 5:- Condition modified $mab,$mba ');
  } else if (mab < 50) {
    // Condition 2
    print('2 $mab,$mba');
  } else if (mab > 80) {
    // Condition 3
    print('3 2 Conditions Loop');
  } else if (mab == 500) {
    print('4');
  } else {
    // all conditions are false
    print(' No Condition  will execute Else part will run');
  }

  // 6.Explain the difference between && and || operators using the second if-else block.
  var and = 8;
  var andor = 10;

  // && operator compare both conditions if true than condition will execute
  if (and < 10 && andor < 10) {
    print('Condition 1 is true');
  } else {
    print('Answer 6.1:- Condition  is false');
  }

  // or operator check only one condition from both conditions if true any condition is true
  //  that will execute

  if (and < 10 || andor < 11) {
    print('Answer 6.2:- One condition is true');
  } else {
    print('Condition 6.2 is false');
  }

  // OR Condition (||)*
  // 7. In the third conditional block,
  // why does it print *"Block 1"* if aaa = 300 and bbb = 5?
  var aaa = 300;
  var bbb = 5;

  if (aaa > 200 || bbb < 10) {
    print('Answer 7:- If one Condition si true than if block will execute');
  } else
    print('Block 2');

  // 8.Rewrite the third conditional block to check if ta > 100 || tb > 60.
  // What would the output be if ta = 90 and tb = 70?

  var ta = 90;
  var tb = 70;

  if (ta > 100 || tb < 60) {
    print('Block 1');
  } else {
    print(
        'Answer 8:- Block 2 will execute because not a single condition is true');
  }

  // ### *AND Condition (&&)*
  // 9.What will be the output of the fourth conditional block if cc = 400 and dd = 101? Why?

  var cc = 400;
  var dd = 101;

  if (cc > 200 && dd < 100) {
    print('Block 1');
  } else {
    print(
        'Answer 9:- Else Condition will execute because && operator check both condition must be true,\n So  Block 2 will execute');
  }

  // 10.Update the fourth conditional block to print *"Special Case"*
  // when cc2 == 500 && dd2 == 50.
  var cc2 = 500;
  var dd2 = 50;

  if (cc2 == 200 && dd2 == 100) {
    print('Block 1');
  } else {
    print(
        'Answer 10:- Else Condition will execute because both conditions must be true means equal');
  }

  // ### *General Questions*
  // 11. How does Dart prioritize evaluation of conditions in if-else statements
  // when multiple conditions are present?
  print(
      'Answer 11:- In dart or any language if else statements executes up to down, if first condition is true than it will execute otherwise else part will execute and next condition will be compared until we get true condition');

  // 12. Write a new block of code using *nested if statements* to check:
  // - If a number x > 0, print *"Positive"*.
  // - If it is less than 0, print *"Negative"*.
  // - If it equals 0, print *"Zero"*.

  var x = 0;

  if (x > 0) {
    print('Positive');
  } else if (x < 0) {
    print('Negative');
  }
  print('Answer 12 :-Zero');
}
