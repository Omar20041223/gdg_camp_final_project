class ProductsModel {
  final int id;
  final String name;
  final String description;
  final dynamic price;
  final dynamic categoryId;
  final String img;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProductsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.categoryId,
    required this.img,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      categoryId: json['category_id'],
      img: json['img'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
