class Bannermodel {
	int? id;
	String? image;
	dynamic category;
	dynamic product;

	Bannermodel({this.id, this.image, this.category, this.product});

	factory Bannermodel.fromJson(Map<String, dynamic> json) => Bannermodel(
				id: json['id'] as int?,
				image: json['image'] as String?,
				category: json['category'] as dynamic,
				product: json['product'] as dynamic,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'image': image,
				'category': category,
				'product': product,
			};
}
