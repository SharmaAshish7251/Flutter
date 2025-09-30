import 'package:books/screens/book_screen.dart';
import 'package:books/screens/category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Book App'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Category'),
              Tab(text: 'Books'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoryScreen(),
            BookScreen(),
          ],
        ),
      ),
    );
  }
}
