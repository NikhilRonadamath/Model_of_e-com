class Product {
  final String title;
  final double price;
  final double? rating;
  final int? reviewCount;
  final String imageUrl;

  Product({
    required this.title,
    required this.price,
    this.rating,
    this.reviewCount,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      reviewCount: json['reviewCount'] as int?,   // ⭐ important
      imageUrl: json['imageUrl'],
    );
  }
}