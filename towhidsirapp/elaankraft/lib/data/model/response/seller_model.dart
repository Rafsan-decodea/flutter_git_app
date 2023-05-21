class SellerModel {
  late Seller _seller;
  late int _avgRating;
  late int _totalReview;
  late int _totalOrder;
  late int _totalProduct;

  SellerModel(
      {required Seller seller,
      required int avgRating,
      required int totalReview,
      required int totalOrder,
      required int totalProduct}) {
    this._seller = seller;
    this._avgRating = avgRating;
    this._totalReview = totalReview;
    this._totalOrder = totalOrder;
    this._totalProduct = totalProduct;
  }

  Seller get seller => _seller;
  int get avgRating => _avgRating;
  int get totalReview => _totalReview;
  int get totalOrder => _totalOrder;
  int get totalProduct => _totalProduct;

  SellerModel.fromJson(Map<String, dynamic> json) {
    _seller =
        (json['seller'] != null ? new Seller.fromJson(json['seller']) : null)!;
    _avgRating = json['avg_rating'];
    _totalReview = json['total_review'];
    _totalOrder = json['total_order'];
    _totalProduct = json['total_product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._seller != null) {
      data['seller'] = this._seller.toJson();
    }
    data['avg_rating'] = this._avgRating;
    data['total_review'] = this._totalReview;
    data['total_order'] = this._totalOrder;
    data['total_product'] = this._totalProduct;
    return data;
  }
}

class Seller {
  late int _id;
  late String _fName;
  late String _lName;
  late String _phone;
  late String _image;
  late Shop _shop;

  Seller(
      {required int id,
      required String fName,
      required String lName,
      required String phone,
      required String image,
      required Shop shop}) {
    this._id = id;
    this._fName = fName;
    this._lName = lName;
    this._phone = phone;
    this._image = image;
    this._shop = shop;
  }

  int get id => _id;
  String get fName => _fName;
  String get lName => _lName;
  String get phone => _phone;
  String get image => _image;
  Shop get shop => _shop;

  Seller.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fName = json['f_name'];
    _lName = json['l_name'];
    _phone = json['phone'];
    _image = json['image'];
    _shop = (json['shop'] != null ? new Shop.fromJson(json['shop']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['f_name'] = this._fName;
    data['l_name'] = this._lName;
    data['phone'] = this._phone;
    data['image'] = this._image;
    if (this._shop != null) {
      data['shop'] = this._shop.toJson();
    }
    return data;
  }
}

class Shop {
  late int _id;
  late int _sellerId;
  late String _name;
  late String _address;
  late String _contact;
  late String _image;
  late String _createdAt;
  late String _updatedAt;
  late String _banner;
  late int _temporaryClose;
  late String _vacationEndDate;
  late String _vacationStartDate;
  late int _vacationStatus;

  Shop(
      {required int id,
      required int sellerId,
      required String name,
      required String address,
      required String contact,
      required String image,
      required String createdAt,
      required String updatedAt,
      required String banner,
      required int temporaryClose,
      required String vacationEndDate,
      required String vacationStartDate,
      required int vacationStatus}) {
    this._id = id;
    this._sellerId = sellerId;
    this._name = name;
    this._address = address;
    this._contact = contact;
    this._image = image;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._banner = banner;
    this._temporaryClose = temporaryClose;
    this._vacationEndDate = vacationEndDate;
    this._vacationStartDate = vacationStartDate;
    this._vacationStatus = vacationStatus;
  }

  int get id => _id;
  int get sellerId => _sellerId;
  String get name => _name;
  String get address => _address;
  String get contact => _contact;
  String get image => _image;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  String get banner => _banner;
  int get temporaryClose => _temporaryClose;
  String get vacationEndDate => _vacationEndDate;
  String get vacationStartDate => _vacationStartDate;
  int get vacationStatus => _vacationStatus;

  Shop.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _sellerId = int.parse(json['seller_id'].toString());
    _name = json['name'];
    _address = json['address'];
    _contact = json['contact'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _banner = json['banner'];
    _temporaryClose = json['temporary_close'] != null
        ? int.parse(json['temporary_close'].toString())
        : 0;
    _vacationEndDate = json['vacation_end_date'];
    _vacationStartDate = json['vacation_start_date'];
    _vacationStatus = json['vacation_status'] != null
        ? int.parse(json['vacation_status'].toString())
        : 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['seller_id'] = this._sellerId;
    data['name'] = this._name;
    data['address'] = this._address;
    data['contact'] = this._contact;
    data['image'] = this._image;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['banner'] = this._banner;
    data['temporary_close'] = this._temporaryClose;
    data['vacation_end_date'] = this._vacationEndDate;
    data['vacation_start_date'] = this._vacationEndDate;
    data['vacation_status'] = this._vacationStatus;

    return data;
  }
}
