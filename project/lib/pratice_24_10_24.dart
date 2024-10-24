import 'dart:io';

void main(){

  print('My First Dart Program');

  stdout.write('Enter your Name :');

  var name= stdin.readLineSync();

  print('your name is $name');
}