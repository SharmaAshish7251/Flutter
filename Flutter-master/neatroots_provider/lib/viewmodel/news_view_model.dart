import 'package:flutter/material.dart';
import 'package:neatroots_provider/models/api_models.dart';
import '../models/api_services.dart';



class NewsViewModels extends ChangeNotifier{
  final ApiServices  _apiService;


  NewsViewModels(this._apiService);


  // 3 stage of every api status Backend process
  List<ApiModels> _articles = [];
  bool _isLoading = false;
  String? _errorMessage;


  // get method -- UI part
List<ApiModels> get articles=> _articles;
bool get isLoading => _isLoading;
String? get errorMessage => _errorMessage;


Future<void> fetchNews() async {
  _isLoading = true;
  _errorMessage = null;
  notifyListeners(); // to change State -- UI changes , part of provider


    try{
      _articles = await _apiService.fetchTopHeadlines(); // calling method and storing data in _articles
      print(_articles.length);
    }
    catch(e){
      _errorMessage = e.toString();
    }

    // when response received we need to change ui and show data
    _isLoading = false;
    notifyListeners();

}

}