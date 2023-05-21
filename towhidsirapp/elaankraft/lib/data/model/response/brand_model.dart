class BrandModel {
  late int _id;
  late String _name;
  late String _image;
  late int _status;
  late String _createdAt;
  late String _updatedAt;
  late int _brandProductsCount;

  BrandModel(
      {required int id,
      required String name,
      required String image,
      required int status,
      required String createdAt,
      required String updatedAt,
      required int brandProductsCount}) {
    this._id = id;
    this._name = name;
    this._image = image;
    this._status = status;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._brandProductsCount = brandProductsCount;
  }

  int get id => _id;
  String get name => _name;
  String get image => _image;
  int get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  int get brandProductsCount => _brandProductsCount;

  BrandModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['image'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _brandProductsCount = json['brand_products_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['image'] = this._image;
    data['status'] = this._status;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['brand_products_count'] = this._brandProductsCount;
    return data;
  }
}
