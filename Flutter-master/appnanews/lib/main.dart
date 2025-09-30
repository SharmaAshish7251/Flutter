import '/view/screen/home_screen.dart';
import '/viewmodel/news_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/api_service.dart';

void main() {

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiService>(create: (_) => ApiService()),

        ChangeNotifierProvider<NewsViewModels>(
          create: (context) => NewsViewModels(context.read<ApiService>()),
        ),
      ],
      child: MaterialApp(
        title: 'News App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blueGrey,
        ),
        home: HomeScreen(),

      ),
    );
  }
}
