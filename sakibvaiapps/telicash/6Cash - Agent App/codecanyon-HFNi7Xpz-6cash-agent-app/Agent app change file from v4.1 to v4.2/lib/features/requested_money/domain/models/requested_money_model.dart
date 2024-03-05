class RequestedMoneyModel {
  int? totalSize;
  int? limit;
  int? offset;
  List<RequestedMoney>? requestedMoney;

  RequestedMoneyModel(
      {this.totalSize, this.limit, this.offset, this.requestedMoney});

  RequestedMoneyModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['requested_money'] != null) {
      requestedMoney = <RequestedMoney>[];
      json['requested_money'].forEach((v) {
        requestedMoney!.add(RequestedMoney.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = totalSize;
    data['limit'] = limit;
    data['offset'] = offset;
    if (requestedMoney != null) {
      data['requested_money'] =
          requestedMoney!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RequestedMoney {
  int? id;
  Receiver? receiver;
  String? type;
  double? amount;
  String? createdAt;

  RequestedMoney(
      {this.id,
        this.receiver,
        this.type,
        this.amount,
        this.createdAt});

  RequestedMoney.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    receiver =
    json['receiver'] != null ? Receiver.fromJson(json['receiver']) : null;
    type = json['type'];
    amount = json['amount'].toDouble();
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (receiver != null) {
      data['receiver'] = receiver!.toJson();
    }
    data['type'] = type;
    data['amount'] = amount;
    data['created_at'] = createdAt;
    return data;
  }
}

class Receiver {
  String? phone;
  String? name;

  Receiver({this.phone, this.name});

  Receiver.fromJson(Map<String, dynamic> json) {
    phone = json['phone'] ?? '';
    name = json['name'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    data['name'] = name;
    return data;
  }
}
