import 'dart:convert';

import 'api_models.dart';
import 'package:http/http.dart' as http;

class ApiServices {

  static const _baseUrl = 'https://newsapi.org/v2';

  static const _apikey = '8289982b3728484785c88db1e666ed41';

  // https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=8289982b3728484785c88db1e666ed41


  Future<List<ApiModels>> fetchTopHeadlines() async {
    final uri = Uri.parse(
        '$_baseUrl/top-headlines?country=us&category=business&apiKey=$_apikey');

    final response = await http.get(uri);


    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      final List articlesJson = data['articles'];
      // print(" data : $articlesJson");


      return articlesJson.map((json) => ApiModels.fromJson(json)).toList();

    } else {
      throw Exception('Failed to load news');
    }
  }


}