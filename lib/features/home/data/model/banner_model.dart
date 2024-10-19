class BannerModel {
  int? id;
  String? image;
  Null category;
  Null product;

  BannerModel({this.id, this.image, this.category, this.product});

  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    category = json['category'];
    product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['category'] = category;
    data['product'] = product;
    return data;
  }
}
