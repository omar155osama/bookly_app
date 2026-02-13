
class HomeEntity {
  final String? bookId;
  final String? image;
  final String? tilte;
  final String? authorName;
  final num? price;
  final num? rating;

  HomeEntity({
    required this.tilte,
    required this.authorName,
    required this.price,
    required this.rating,
    this.bookId,
    required this.image,
  });
}
