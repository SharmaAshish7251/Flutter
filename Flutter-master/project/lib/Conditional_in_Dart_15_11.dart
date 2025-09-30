// What is Conditional Programming

void main(){

  // Basic
  var a=100;

  if(a>200){
    // Condition 1
    print('1 $a');
  } else if(a>50){
    // Condition 2
    print(' Basic Loop : 2 $a');
  } else if(a>80){
    // Condition 3
    print('3 $a');
  } else{
    // all conditions are false
    print('false');
  }


// 2 Conditions
  var ab=100;
  var ba=50;

  if(ab>200 && ba>100){
    // Condition 1 and Condition 2
    print('1 ');
  } else if(ab<50){
    // Condition 2
    print('2 ');
  } else if(ab>80){
    // Condition 3
    print('3 2 Conditions Loop');
  } else if(ab==500){
    print('4');
  }
    else{
    // all conditions are false
    print('false');
  }

  // 2 conditions check one is true , *(or condition)*

  var aa=100;
  var bb=50;

  if(aa>200 || bb<10) {
    print('Block 1');
  }
    else
      print('Block 2');


  // 2 conditions check , and condition
  var cc=500;
  var dd=50;

  if(cc>200 && dd<100) {
    print('Block 1');
  }
  else
    print('Block 2');


  }

