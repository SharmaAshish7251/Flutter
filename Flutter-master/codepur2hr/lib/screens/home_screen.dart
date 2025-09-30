import 'package:flutter/material.dart';

import 'book_screen.dart';
import 'category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text('Book App'),
          bottom: TabBar(tabs: [Tab(text: 'Category'), Tab(text: 'Books')]),
        ),

        body: TabBarView(children: [CategoryScreen(), BookScreen()]),
      ),
    );
  }
}
