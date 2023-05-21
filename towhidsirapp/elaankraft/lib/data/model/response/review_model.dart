class ReviewModel {
  late int _id;
  late int _productId;
  late int _customerId;
  late String _comment;
  late List<String> _attachment;
  late int _rating;
  late int _status;
  late String _createdAt;
  late String _updatedAt;
  late Customer _customer;

  ReviewModel(
      {required int id,
      required int productId,
      required int customerId,
      required String comment,
      required List<String> attachment,
      required int rating,
      required int status,
      required String createdAt,
      required String updatedAt,
      required Customer customer}) {
    this._id = id;
    this._productId = productId;
    this._customerId = customerId;
    this._comment = comment;
    this._attachment = attachment;
    this._rating = rating;
    this._status = status;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._customer = customer;
  }

  int get id => _id;
  int get productId => _productId;
  int get customerId => _customerId;
  String get comment => _comment;
  List<String> get attachment => _attachment;
  int get rating => _rating;
  int get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  Customer get customer => _customer;

  ReviewModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _productId = json['product_id'];
    _customerId = json['customer_id'];
    _comment = json['comment'];
    if (json['attachment'] != null) {
      _attachment = json['attachment'].cast<String>();
    }

    _rating = json['rating'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _customer = (json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['product_id'] = this._productId;
    data['customer_id'] = this._customerId;
    data['comment'] = this._comment;
    data['customer'] = this._customer.toJson();
    data['rating'] = this._rating;
    data['status'] = this._status;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['customer'] = this._customer.toJson();
    return data;
  }
}

class Customer {
  late int _id;
  late String _name;
  late String _fName;
  late String _lName;
  late String _phone;
  late String _image;
  late String _email;
  late String _emailVerifiedAt;
  late String _createdAt;
  late String _updatedAt;
  late String _streetAddress;
  late String _country;
  late String _city;
  late String _zip;
  late String _houseNo;
  late String _apartmentNo;

  Customer(
      {required int id,
      required String name,
      required String fName,
      required String lName,
      required String phone,
      required String image,
      required String email,
      required String emailVerifiedAt,
      required String createdAt,
      required String updatedAt,
      required String streetAddress,
      required String country,
      required String city,
      required String zip,
      required String houseNo,
      required String apartmentNo}) {
    this._id = id;
    this._name = name;
    this._fName = fName;
    this._lName = lName;
    this._phone = phone;
    this._image = image;
    this._email = email;
    this._emailVerifiedAt = emailVerifiedAt;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._streetAddress = streetAddress;
    this._country = country;
    this._city = city;
    this._zip = zip;
    this._houseNo = houseNo;
    this._apartmentNo = apartmentNo;
  }

  int get id => _id;
  String get name => _name;
  String get fName => _fName;
  String get lName => _lName;
  String get phone => _phone;
  String get image => _image;
  String get email => _email;
  String get emailVerifiedAt => _emailVerifiedAt;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  String get streetAddress => _streetAddress;
  String get country => _country;
  String get city => _city;
  String get zip => _zip;
  String get houseNo => _houseNo;
  String get apartmentNo => _apartmentNo;

  Customer.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _fName = json['f_name'];
    _lName = json['l_name'];
    _phone = json['phone'];
    _image = json['image'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _streetAddress = json['street_address'];
    _country = json['country'];
    _city = json['city'];
    _zip = json['zip'];
    _houseNo = json['house_no'];
    _apartmentNo = json['apartment_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['f_name'] = this._fName;
    data['l_name'] = this._lName;
    data['phone'] = this._phone;
    data['image'] = this._image;
    data['email'] = this._email;
    data['email_verified_at'] = this._emailVerifiedAt;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['street_address'] = this._streetAddress;
    data['country'] = this._country;
    data['city'] = this._city;
    data['zip'] = this._zip;
    data['house_no'] = this._houseNo;
    data['apartment_no'] = this._apartmentNo;
    return data;
  }
}
