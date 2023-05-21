class UpdateUserInfoModel {
  late final String fName;
  late final String lName;
  late final String phone;

  UpdateUserInfoModel({
    required this.fName,
    required this.lName,
    required this.phone,
  });

  UpdateUserInfoModel.fromJson(
      Map<String, dynamic> json, this.fName, this.lName, this.phone) {
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['phone'] = this.phone;
    return data;
  }
}
