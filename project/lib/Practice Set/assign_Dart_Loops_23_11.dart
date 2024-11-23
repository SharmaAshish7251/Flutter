// Dart Loops

void main() {
  // 1. What will be the output of the first for loop?
  // Basic Loop
  print('Answer 1:- this will print 1 to 10 number');

  for (int a = 1; a <= 10; a++) {
    print(a);
  }

  // 2. Modify the first for loop to print only even numbers between 1 and 10. How would you implement this?
  print('Answer 2:- Even Numbers');

  for (int a = 1; a <= 10; a++) {
    if (a % 2 == 0) {
      print(a);
    }
  }

  // 3. How can you rewrite the first for loop using a while loop?
  // Basic Loop to While Loop (Above loop)

  print('Answer 3:- While Loop');
  // While loop
  int a = 1;
  while (a <= 10) {
    print(a);
    a++;
  }

  // ### *Do-While Loop*
  // 4.Why does the second loop print "Hello" multiple times despite being declared as a for loop?

  print(
      'Answer 4:- Hello print multiple times because print declared inside loop, if you want run any command multiple times you can simply place inside the loop');
  for (int a = 1; a <= 10; a++) {
    print("Hello ");
  }

  // 5. Explain the difference between for and do-while loops with an example.
  print(
      'Answer 5.1:- basic loop executes when condition is true , it  compare values before increment');
  // Basic Loop
  for (int a = 1; a <= 10; a++) {
    print(a);
  }

// do while loop

  print(
      'Answer 5.2:- do while loop will execute at-least once whether condition is false, increment will done before condition check because in do while loop we write loop increment before condition check');
  int no = 100;
  do {
    print('Number value is : $no');
    no += 1; // Increment the value of no by 1
    // no++; all methods we can use
    // no = no+1;
    print(no);
  } while (no < 50); // The condition checks after the first loop execution

  // 6.What will happen if no = 40 in the do-while loop? What will be the output?

  print('Answer 6');
  int no2 = 40;

  do {
    print('Value $no2');
    no2++;
  } while (no2 < 50);
  print(no2);

  // ### *Increment/Decrement*
  // 7. Rewrite the do-while loop to use no-- instead of no++. How would this change the behavior of the loop?
  print('Answer 7:- It will minus the value');
  int no3 = 40;

  do {
    print('Value $no3');
    no3--;
    if (no3 == 0) break;
  } while (no3 < 50);
  print('Infinite Loop Break used $no3');

  // 8. List three different ways to increment the no variable inside the do-while loop. Provide examples for each.

  int ex1 = 3;

// 1st method: Using the increment operator (++)
  do {
    print(ex1);
    ex1++; // Incrementing using the increment operator
  } while (ex1 < 10);
  print(ex1);
  print('1st');

// 2nd method: Using addition and assignment
  do {
    print(ex1);
    ex1 = ex1 + 1; // Incrementing using addition and assignment
  } while (ex1 < 10);
  print(ex1);
  print('2nd');

// 3rd method: Using the shorthand assignment operator (+=)
  do {
    print(ex1);
    ex1 += 1; // Incrementing using the shorthand operator
  } while (ex1 < 10);
  print(ex1);
  print('3rd');

  // ### *Logic in Loops*
  // 9. How can you modify the do-while loop to exit immediately if no4 == 100?
  int no4 = 90;

  do {
    print('Value $no3');
    no3++;
    if (no3 == 100) break;
  } while (no3 < 110);
  print(no3);

  // 10. Write a for loop that calculates the sum of numbers from 1 to 10 and prints the result.
  int sum = 0;

  for (int no = 1; no <= 10; no++) {
    sum += no;
  }
  print('Sum of numbers from 1 to 10 is: $sum');

  // ### *General Loop Questions*


}
