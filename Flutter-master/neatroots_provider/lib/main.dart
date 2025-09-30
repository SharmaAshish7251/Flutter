import 'package:flutter/material.dart';
import 'package:neatroots_provider/models/api_services.dart';
import 'package:neatroots_provider/view/screen/home_screen.dart';
import 'package:neatroots_provider/viewmodel/news_view_model.dart';
import 'package:provider/provider.dart';




void main(){
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider setup
    return MultiProvider(
      providers: [
        Provider<ApiServices>(create: (_) => ApiServices()), // to create object

        ChangeNotifierProvider<NewsViewModels>(
          create: (context) => NewsViewModels(context.read<ApiServices>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false ,
        title: 'News App',
        theme : ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: HomeScreen(),
      ),
    ); // provider setup
  }
}
