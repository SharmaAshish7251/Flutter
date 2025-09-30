


class BookCategory {


  final int id;
  final String name;
  final String imageUrl;


  BookCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
});


  factory BookCategory .fromMap(Map<String, dynamic> map){
    return BookCategory(
      id: map['id'],
      name: map['name'],
      imageUrl: map['categoryImageUrl'],
    );
  }


}