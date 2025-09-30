// model is just a class

class ApiModels {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  ApiModels({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  //Data Model -- to store response from API
  factory ApiModels.fromJson(Map<String, dynamic> json) {
    return ApiModels(
      author: json['author'],
      title: json['title'] ?? 'No title Found',
      description: json['description'] ?? 'No Description Found',
      url: json['url'] ?? 'Invalid url',
      urlToImage: json['urlToImage'] ?? 'Image not Found',
      publishedAt: json['publishedAt'] ?? 'Publish date not Found',
      content: json['content'] ?? 'Content not Found',
    );
  }
}
