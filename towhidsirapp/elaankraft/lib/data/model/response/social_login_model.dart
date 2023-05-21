class SocialLoginModel {
  late String token;
  late String uniqueId;
  late String medium;
  late String email;

  SocialLoginModel(
      {required this.token,
      required this.uniqueId,
      required this.medium,
      required this.email});

  SocialLoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    uniqueId = json['unique_id'];
    medium = json['medium'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['unique_id'] = this.uniqueId;
    data['medium'] = this.medium;
    data['email'] = this.email;
    return data;
  }
}
