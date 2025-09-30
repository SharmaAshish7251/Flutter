
import 'package:flutter/material.dart';

import '../../models/api_models.dart';
class DetaailsScreen extends StatelessWidget {

  final ApiModels article;
  const DetaailsScreen({
    required this.article,super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Article Detaoils'),
      ),
      // body: ,
    );
  }
}
