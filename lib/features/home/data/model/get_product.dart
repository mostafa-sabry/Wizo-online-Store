class GetProductModel {
  final int? id;
  final String? name;
  final String? image;
  final String? price;

  GetProductModel({this.id, this.name, this.image, this.price});

  factory GetProductModel.fromJson(Map<String, dynamic> json) {
    return GetProductModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
    );
  }
}
