//Final vs Const Keywords

void main(){

  final name="Rahul"; // by file keyword we can assign value at once for lifetime of code
  print('No Changeable Value : $name');


  const values = [
    "Akash",
    "Aman",
    "Pawan",
    "Paras",
  ];

  print('Constant Values are which are non changeable : $values');

}


// *Can we use Dynamic with final
// * No Because Dynamic behave opposite of final keyword