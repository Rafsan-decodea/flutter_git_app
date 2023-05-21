class ShippingMethodModel {
  late int id;
  late int creatorId;
  late String creatorType;
  late String title;
  late double cost;
  late String duration;
  late int status;
  late String createdAt;
  late String updatedAt;

  ShippingMethodModel(
      {required int id,
      required int creatorId,
      required String creatorType,
      required String title,
      required double cost,
      required String duration,
      required int status,
      required String createdAt,
      required String updatedAt}) {
    this.id = id;
    this.creatorId = creatorId;
    this.creatorType = creatorType;
    this.title = title;
    this.cost = cost;
    this.duration = duration;
    this.status = status;
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }

  ShippingMethodModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    creatorId = json['creator_id'];
    creatorType = json['creator_type'];
    title = json['title'];
    cost = json['cost'].toDouble();
    duration = json['duration'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['creator_id'] = this.creatorId;
    data['creator_type'] = this.creatorType;
    data['title'] = this.title;
    data['cost'] = this.cost;
    data['duration'] = this.duration;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
