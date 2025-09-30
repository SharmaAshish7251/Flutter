class ApiModels {

  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  ApiModels({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.url,
    required this.publishedAt,
    required this.content,
  });


  factory ApiModels.fromJson(Map<String, dynamic> json){
    return ApiModels(
        title: json['title'] ?? 'No Title Found',
        description: json['description'] ?? 'No Description Found',
        urlToImage: json['urlToImage'] ?? 'No Image Found',
        url: json['url'] ?? 'No Url Found',
        publishedAt: json['publishedAt'] ?? 'No Published At Found',
        content: json['content'] ?? 'No Content Found',
    );
  }



}