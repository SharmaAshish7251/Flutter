// List in Dart

void main(){

  // 1. *Basic List Operations*
  // - Create a list of integers containing values [5, 10, 15, 20, 25].
  // Add 30 to the end of the list and print the updated list.

    var listname=[5,10,15,20,25];
    listname.add(30);
    print('Answer 1: $listname');


  // - Create an empty list of strings, add the names "Alice", "Bob", and "Charlie" to it,
    // and print the list.
    var emptylist =[]; // Empty List
    emptylist.add('Alice,Bob,Charlie'); // value in array
    print("Empty list, after adding value $emptylist");


  //   2. Inserting and Merging*
  // - Create a list of integers [1, 2, 3, 4, 5].
    // Insert the number 10 at index 2 and print the list.
       var insmerge=[1,2,3,4,5];
       print('Answer 2: List before merge $insmerge');
       insmerge[2]=10;
       print('List after merge : $insmerge');

  // - Create two lists: [100, 200, 300] and [400, 500].
  // Merge the second list into the first one at index 1 and print the result.
       var mergelist1=[100,200,300];
       print('Merge List 1 : $mergelist1');

       var mergelist2=[400,500];
       print('Merge List 2 $mergelist2');

       mergelist1.insertAll(1, mergelist2);
       print('After value at index 1 into list 1 : $mergelist1');


  //   3. *Updating List Elements*
  // - Given a list of numbers [5, 10, 15, 20, 25],
  //   update the element at index 3 to 99 and print the modified list.
       var updatlist=[5,10,15,20,25];
       print('Before updatelist :$updatlist');
       updatlist.insert(3, 99);
       print('After Update list :$updatlist');

  //   4. *Replacing a Range of Values*
  // - Create a list [10, 20, 30, 40, 50, 60].
  // Replace the elements from index 1 to 4 with [100, 200, 300] and print the updated list.
       var rangelist=[10,20,30,40,50,60];
       print('Range List Before :$rangelist');
       rangelist.replaceRange(1, 4, [100,200,300]);
       print('After List : $rangelist');

  //
  //   5. *Removing Elements*
  // - Create a list of integers [7, 14, 21, 28, 35, 42].
  // Remove the last element and print the list.
       var remlast=[7,14,21,28,35,42];
       print('Answer 5:- List Before $remlast');
       remlast.removeLast();
       print('After removing last element : $remlast');

    // - Remove the element 21 from the list (if it exists) and print the updated list.
        remlast.remove(21);
        print('Removing 21 from list : $remlast');

    // - Remove the element at index 2 and print the list.
        print(remlast);
        remlast.removeAt(2);
        print('After removing 2nd Index value : $remlast');

  //   6. *Removing a Range of Elements*
  // - Create a list [5, 10, 15, 20, 25, 30, 35, 40].
  //   Remove the elements from index 2 to 5 and print the updated list.
       var remorang=[5,10,15,20,25,30,35,40];
       print('Answer 6:- Before Remove Elements using range : $remorang');
       remorang.removeRange(2, 5);
       print('After Removing Elements using range : $remorang');

  //   7. *List Properties*
  // - Given the list [3, 6, 9, 12, 15], print the length of the list,
  //   the reversed version, the first element, and the last element.
       var reverselist=[3,6,9,12,15];
       print('Answer 7:- Reverse List Length is : ${reverselist.length  }'); // List Length
       print('Reverse List is : ${reverselist.reversed}'); // Reverse List
       print('First value is : ${reverselist.first}'); // First
       print('Last Element value is :${reverselist.last}'); //Last element

  //   8.*Checking List Conditions*
  //  -Create an empty list and check if it is empty.
  //   If it’s empty, add the value 42 and print the list.
       var emplist=[];
       print('Answer 8:- Empty list $emplist');
      if(emplist.isEmpty){
        emplist.add(42);
      }
      print('Conditional List if empty : $emplist');


    // - Create a list with some values, check if it’s not empty, and print "List is not empty" if that’s true.
      var notempty=[2,3,4,5,6];
      print('Before $notempty');

      if(notempty.isNotEmpty){
        print('List is not Empty');
      }

  //   9. *Practice Task*
  // - Create a list containing numbers from 1 to 10.
       var one2ten=[1,2,3,4,5,6,7,8,9,10];
       print(one2ten);

       // - Add 20 to the end of the list.
       one2ten.add(20);
       print('Add 20 to the end of the list $one2ten');

    // - Insert 15 at index 5.
       one2ten[5]=15;
       print('Insert 15 at 5 : $one2ten');
    //
    // Replace the elements from index 2 to 4 with [99, 100, 101].
       one2ten.replaceRange(2, 4, [99, 100, 101]);
       print('After adding elements from index 2 to 4 : $one2ten');

    // - Remove the last element.
       one2ten.removeLast();
       print('After Removing the last element $one2ten');

    // - Print the final list.
       print('Final List is : $one2ten');
}
