class ProductModel {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;

  ProductModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    var p = ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      category: json['category'],
      image: json['image'],
    );
    return p;
  }
}
