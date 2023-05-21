class UserInfoModel {
  late int id;
  late String name;
  late String method;
  late String fName;
  late String lName;
  late String phone;
  late String image;
  late String email;
  late String emailVerifiedAt;
  late String createdAt;
  late String updatedAt;
  late double walletBalance;
  late double loyaltyPoint;

  UserInfoModel(
      {required this.id,
      required this.name,
      required this.method,
      required this.fName,
      required this.lName,
      required this.phone,
      required this.image,
      required this.email,
      required this.emailVerifiedAt,
      required this.createdAt,
      required this.updatedAt,
      required this.walletBalance,
      required this.loyaltyPoint});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    method = json['_method'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    image = json['image'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['wallet_balance'] != null) {
      walletBalance = json['wallet_balance'].toDouble();
    }
    if (json['loyalty_point'] != null) {
      loyaltyPoint = json['loyalty_point'].toDouble();
    } else {
      walletBalance = 0.0;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['_method'] = this.method;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['wallet_balance'] = this.walletBalance;
    data['loyalty_point'] = this.loyaltyPoint;
    return data;
  }
}
