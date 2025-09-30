class Book {
  final int id;
  final String category;
  final String author;
  final String image;
  final String title;
  final String pdfurl;

  Book({
    required this.id,
    required this.category,
    required this.author,
    required this.image,
    required this.title,
    required this.pdfurl,
  });

  factory Book.fromMap(int id, Map<String, dynamic> map) {
    return Book(
      id: id,
      category: map['Category'] as String,
      author: map['bookAuthor'] as String,
      image: map['bookImage'] as String,
      title: map['bookName'] as String,
      pdfurl: map['bookUrl'] as String,
    );
  }
}
