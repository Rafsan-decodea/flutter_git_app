class SupportReplyModel {
  late int id;
  late String customerMessage;
  late String adminMessage;
  late String createdAt;
  late String updatedAt;

  SupportReplyModel(
      {required this.id,
      required this.customerMessage,
      required this.adminMessage,
      required this.createdAt,
      required this.updatedAt});

  SupportReplyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerMessage = json['customer_message'];
    adminMessage = json['admin_message'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_message'] = this.customerMessage;
    data['admin_message'] = this.adminMessage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
