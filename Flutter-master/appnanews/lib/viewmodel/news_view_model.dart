import '../models/api_models.dart';
import '../models/api_service.dart';
import 'package:flutter/material.dart';

class NewsViewModels extends ChangeNotifier {
  final ApiService _apiService;

  NewsViewModels(this._apiService);

  List<ApiModels> _articles = [];
  bool _isLoading = false;
  String? _errorMessage;


  List<ApiModels> get articles => _articles;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;



  Future<void> fetchNews() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    print("about to call");
    try {
      _articles= await _apiService.fetchTopHeadlines();
      print(_articles.length);
    } catch (e) {
      _errorMessage = e.toString();
    }


    print("articles : $_articles");

    _isLoading = false;
    notifyListeners();
  }
}
