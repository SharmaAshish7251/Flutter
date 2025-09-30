import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:neatroots_provider/models/api_models.dart';

class ApiServices {
  Future<List<ApiModels>> fetchTopHeadlines() async {
    final baseUrl = 'https://newsapi.org/v2/';
    final apiKey = '1ddf72b75aea49f58da0b369bbacfd1b';

    final uri = Uri.parse(
      '$baseUrl/everything?q=tesla&from=2025-04-17&sortBy=publishedAt&apiKey=$apiKey',
    );
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body); // to decode json response

      // data extraction
      final List articlesJson = data['articles'];


      return articlesJson.map((json) => ApiModels.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load News | Api not responding');
    }
  }
}
