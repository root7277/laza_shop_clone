class CategoriesModel {
  final String id;
  final String images;
  final String name;
  final String price;

  CategoriesModel({required this.id, required this.images, required this.name, required this.price});

  factory CategoriesModel.fromJson(Map json) {
    return CategoriesModel(id: json['products'][0]['id'], images: json['products'][0]['images'][0], name: json['product'][0]['title'], price: json['product'][0]['price']);
  }
}
