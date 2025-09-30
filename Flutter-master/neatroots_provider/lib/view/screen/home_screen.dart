import 'package:flutter/material.dart';
import 'package:neatroots_provider/viewmodel/news_view_model.dart';
import 'package:provider/provider.dart';
import '../widget/article_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<NewsViewModels>(context, listen: false).fetchNews();
    });
  }


@override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsViewModels>(context);
    return Scaffold(
      appBar: AppBar(title: Text('News App'), centerTitle: true),
      body:
          vm.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: vm.articles.length,
                // ListView builder holds upto 3 4 results
                itemBuilder: (context, index) {
                  final article = vm.articles[index]; // to get one article
                  return ArticleCard(articles: article);
                },
              ),
    );
  }
}
