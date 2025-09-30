
import 'package:flutter/material.dart';
import 'package:flutter_ebook/prrovider/book_provider.dart';
import 'package:provider/provider.dart';





class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {





  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<BookProvider>(context, listen: false).fetchBook();

    });
  }


  @override
  Widget build(BuildContext context) {

    final provider = context.watch<BookProvider>();





    return  ListView.builder(
      itemCount: provider.books.length ,
      itemBuilder: (context, index) {

        final book = provider.books[index];

        return ListTile(
          leading: Image.network(book.imageUrl , width: 50, height: 50, fit: BoxFit.cover,),
          title: Text(book.title),
        );



      },
    );
  }
}
