class Book {
  final int id;
  final String title;
  final String author;
  final String imageUrl;
  final String pdfUrl;
  final String category;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.pdfUrl,
    required this.category,
  });

  factory Book.fromMap(int id, Map<String, dynamic> map) {
    return Book(
      id: id,
      title: map['bookName'] as String,
      author: map['bookAuthor'] as String,
      imageUrl: map['bookImage'] as String,
      pdfUrl: map['bookUrl'] as String,
      category: map['Category'] as String,
    );
  }
}
