import 'package:books/provider/book_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BookProvider>();

    if (provider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.books.isEmpty) {
      return const Center(child: Text("No books found"));
    }

    return ListView.builder(
      itemCount: provider.books.length,
      itemBuilder: (context, index) {
        final book = provider.books[index];
        return ListTile(
          leading: Image.network(
            book.image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(book.title),
        );
      },
    );
  }
}
