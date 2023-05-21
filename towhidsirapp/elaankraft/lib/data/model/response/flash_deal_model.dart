class FlashDealModel {
  late int _id;
  late String _title;
  late String _startDate;
  late String _endDate;
  late int _status;
  late int _featured;
  late String _backgroundColor;
  late String _textColor;
  late String _banner;
  late String _slug;
  late String _createdAt;
  late String _updatedAt;
  late int _productId;
  late String _dealType;

  FlashDealModel(
      {required int id,
      required String title,
      required String startDate,
      required String endDate,
      required int status,
      required int featured,
      required String backgroundColor,
      required String textColor,
      required String banner,
      required String slug,
      required String createdAt,
      required String updatedAt,
      required int productId,
      required String dealType}) {
    this._id = id;
    this._title = title;
    this._startDate = startDate;
    this._endDate = endDate;
    this._status = status;
    this._featured = featured;
    this._backgroundColor = backgroundColor;
    this._textColor = textColor;
    this._banner = banner;
    this._slug = slug;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._productId = productId;
    this._dealType = dealType;
  }

  int get id => _id;
  String get title => _title;
  String get startDate => _startDate;
  String get endDate => _endDate;
  int get status => _status;
  int get featured => _featured;
  String get backgroundColor => _backgroundColor;
  String get textColor => _textColor;
  String get banner => _banner;
  String get slug => _slug;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  int get productId => _productId;
  String get dealType => _dealType;

  FlashDealModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _status = json['status'];
    _featured = json['featured'];
    _backgroundColor = json['background_color'];
    _textColor = json['text_color'];
    _banner = json['banner'];
    _slug = json['slug'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _productId = json['product_id'];
    _dealType = json['deal_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['start_date'] = this._startDate;
    data['end_date'] = this._endDate;
    data['status'] = this._status;
    data['featured'] = this._featured;
    data['background_color'] = this._backgroundColor;
    data['text_color'] = this._textColor;
    data['banner'] = this._banner;
    data['slug'] = this._slug;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['product_id'] = this._productId;
    data['deal_type'] = this._dealType;
    return data;
  }
}
