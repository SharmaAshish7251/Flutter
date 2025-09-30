import 'package:flutter/material.dart';
import 'package:neatroots_provider/models/api_models.dart';

class DetailsScreen extends StatelessWidget {

  final ApiModels articles;
  const DetailsScreen({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      // body: ,
    );
  }
}
