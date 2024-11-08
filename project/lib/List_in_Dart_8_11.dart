

void main(){
  //
  // var list=[20,20]; // Basic List -- List shows by []
  //
  // print(list);

  var listName=[10,20,30,40,50];
  listName.add(99); // to add value at end
  print(listName);

  var names = []; // Empty List
  print(names);

  names.add('Akash');
  names.add('Paras');
  names.add('Vishal');
  names.add('Govind');
  print(names);

  names.insert(2, 'Aman'); // Insert values on any index in list
  print('After Insert value : $names');

  names.insertAll(2, listName);
  print('After Merging 2 List : $names');

  names[0]='Rahul'; // to update values
  print('New List : $names');

  listName.replaceRange(0, 4, [1,2,3,4,5]);
  print('Updated Values : $listName');

  listName.removeLast();
  print('Last Object removed $listName');

  listName.remove(40); // can remove any value from list but it should be present in List
  print('After Removing one value from List  $listName');

  listName.removeAt(2); // value removed from index
  print('object removed from index 2 $listName');

  listName.removeRange(2, 4);
  print('Values removed from index 2 to 4 $listName');

  print('Length of Length : ${listName.length}'); // to show length of List
  print('Reversed List : ${listName.reversed}'); // to show reverse value of list
  print('List First value : ${listName.first}'); // it will show First value of List
  print('Last Value of List : ${listName.last}'); // it will show last value of List
  print('List is Empty :${listName.isEmpty}'); // to check list is Empty
  print('List is Not Empty : ${listName.isNotEmpty}'); // to check List is Empty or not


}