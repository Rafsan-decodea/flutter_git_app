class TopSellerModel {
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

  TopSellerModel(
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

  TopSellerModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _sellerId = json['seller_id'];
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
    data['vacation_start_date'] = this._vacationStartDate;
    data['vacation_status'] = this._vacationStatus;
    return data;
  }
}
