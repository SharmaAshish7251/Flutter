
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../models/book.dart';

class BookProvider extends ChangeNotifier {


  final DatabaseReference _ref = FirebaseDatabase.instance.ref().child('Books');



  List<Book> _books = [];
  List<Book> get books => _books;



  bool isLoading = false;

  // BookProvider(){
  //   fetchBook();
  // }



  Future<void> fetchBook() async {
    isLoading = true;
    notifyListeners();


    final snapshot = await _ref.get();
    final data = snapshot.value as Map<dynamic, dynamic>?;


    print('loading...');

    debugPrint('Data: $data');
    print(data);
    if (data != null){
      _books = data.entries.map((e) => Book.fromMap(e.key  , e.value )).toList();
      print(_books);
    }else{
      _books = [];
    }
    print(_books);

    isLoading = false;
    notifyListeners();


  }



}
