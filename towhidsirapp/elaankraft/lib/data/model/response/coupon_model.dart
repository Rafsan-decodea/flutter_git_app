class CouponModel {
  late int _id;
  late String _couponType;
  late String _title;
  late String _code;
  late String _startDate;
  late String _expireDate;
  late double _minPurchase;
  late double _maxDiscount;
  late double _discount;
  late String _discountType;
  late int _status;
  late String _createdAt;
  late String _updatedAt;

  CouponModel(
      {required int id,
      required String couponType,
      required String title,
      required String code,
      required String startDate,
      required String expireDate,
      required double minPurchase,
      required double maxDiscount,
      required double discount,
      required String discountType,
      required int status,
      required String createdAt,
      required String updatedAt}) {
    this._id = id;
    this._couponType = couponType;
    this._title = title;
    this._code = code;
    this._startDate = startDate;
    this._expireDate = expireDate;
    this._minPurchase = minPurchase;
    this._maxDiscount = maxDiscount;
    this._discount = discount;
    this._discountType = discountType;
    this._status = status;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  String get couponType => _couponType;
  String get title => _title;
  String get code => _code;
  String get startDate => _startDate;
  String get expireDate => _expireDate;
  double get minPurchase => _minPurchase;
  double get maxDiscount => _maxDiscount;
  double get discount => _discount;
  String get discountType => _discountType;
  int get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  CouponModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _couponType = json['coupon_type'];
    _title = json['title'];
    if (json['code'] != null) {
      _code = json['code'];
    } else {
      _code = '';
    }
    _startDate = json['start_date'];
    _expireDate = json['expire_date'];
    _minPurchase = json['min_purchase'].toDouble();
    _maxDiscount = json['max_discount'].toDouble();
    _discount = json['discount'].toDouble();
    _discountType = json['discount_type'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['coupon_type'] = this._couponType;
    data['title'] = this._title;
    data['code'] = this._code;
    data['start_date'] = this._startDate;
    data['expire_date'] = this._expireDate;
    data['min_purchase'] = this._minPurchase;
    data['max_discount'] = this._maxDiscount;
    data['discount'] = this._discount;
    data['discount_type'] = this._discountType;
    data['status'] = this._status;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}
