import '/view/screen/widget/article_card.dart';
import '/viewmodel/news_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      appBar: AppBar(title: Text('News App')),
      body:
          vm.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: vm.articles.length,
                itemBuilder: (context, index) {
                  final article = vm.articles[index];

                  return ArticleCard(article: article);
                },
              ),
    );
  }
}
