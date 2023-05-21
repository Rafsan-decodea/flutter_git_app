class RegisterModel {
  String email;
  String password;
  String fName;
  late final String lName;
  String phone;
  String socialId;
  String loginMedium;

  RegisterModel(this.phone,
      {required this.email,
      required this.password,
      required this.fName,
      required this.lName,
      required this.socialId,
      required this.loginMedium});

  RegisterModel.fromJson(Map<String, dynamic> json, this.email, this.password,
      this.fName, this.lName, this.phone, this.socialId, this.loginMedium) {
    email = json['email'];
    password = json['password'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    socialId = json['social_id'];
    loginMedium = json['login_medium'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    data['social_id'] = this.socialId;
    data['login_medium'] = this.loginMedium;
    return data;
  }
}
