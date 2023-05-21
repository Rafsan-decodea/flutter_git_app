import 'package:flutter_sixvalley_ecommerce/data/model/response/chat_model.dart';

class MessageModel {
  late int totalSize;
  late String limit;
  late String offset;
  late List<Message> message;

  MessageModel(
      {required this.totalSize,
      required this.limit,
      required this.offset,
      required this.message});

  MessageModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message.add(Message.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = totalSize;
    data['limit'] = limit;
    data['offset'] = offset;
    if (message != null) {
      data['message'] = message.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Message {
  late int id;
  late String message;
  late int sentByCustomer;
  late int sentBySeller;
  late int sentByAdmin;
  late int seenByDeliveryMan;
  late String createdAt;
  late DeliveryMan deliveryMan;
  late SellerInfo sellerInfo;

  Message(
      {required this.id,
      required this.message,
      required this.sentByCustomer,
      required this.sentBySeller,
      required this.sentByAdmin,
      required this.seenByDeliveryMan,
      required this.createdAt,
      required this.deliveryMan,
      required this.sellerInfo});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
    sentByCustomer = json['sent_by_customer'];
    sentBySeller = json['sent_by_seller'];
    sentByAdmin = json['sent_by_admin'];
    if (json['seen_by_delivery_man'] != null) {
      seenByDeliveryMan = int.parse(json['seen_by_delivery_man'].toString());
    }

    createdAt = json['created_at'];
    deliveryMan = (json['delivery_man'] != null
        ? DeliveryMan.fromJson(json['delivery_man'])
        : null)!;
    sellerInfo = (json['seller_info'] != null
        ? SellerInfo.fromJson(json['seller_info'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['message'] = message;
    data['sent_by_customer'] = sentByCustomer;
    data['sent_by_seller'] = sentBySeller;
    data['sent_by_admin'] = sentByAdmin;
    data['seen_by_delivery_man'] = seenByDeliveryMan;
    data['created_at'] = createdAt;
    data['delivery_man'] = deliveryMan.toJson();
    data['seller_info'] = sellerInfo.toJson();
    return data;
  }
}
