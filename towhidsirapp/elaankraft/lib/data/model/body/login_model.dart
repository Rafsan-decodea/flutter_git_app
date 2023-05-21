class LoginModel {
  late final String email;
 late final  String password;

  LoginModel({required this.email, required this.password});

  LoginModel.fromJson(Map<String, dynamic> json, this.email, this.password) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
