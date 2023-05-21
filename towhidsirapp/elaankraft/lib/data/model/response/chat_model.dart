class ChatModel {
  late int totalSize;
  late String limit;
  late String offset;
  late List<Chat> chat;

  ChatModel(
      {required this.totalSize,
      required this.limit,
      required this.offset,
      required this.chat});

  ChatModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['chat'] != null) {
      chat = <Chat>[];
      json['chat'].forEach((v) {
        chat.add(new Chat.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_size'] = this.totalSize;
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    data['chat'] = this.chat.map((v) => v.toJson()).toList();
    return data;
  }
}

class Chat {
  late int id;
  late int userId;
  late int sellerId;
  late int adminId;
  late int deliveryManId;
  late String message;
  late int sentByCustomer;
  late int sentBySeller;
  late int sentByAdmin;
  late int sentByDeliveryMan;
  late int seenByCustomer;
  late int status;
  late String createdAt;
  late String updatedAt;
  late SellerInfo sellerInfo;
  late DeliveryMan deliveryMan;

  Chat({
    required this.id,
    required this.userId,
    required this.sellerId,
    required this.adminId,
    required this.deliveryManId,
    required this.message,
    required this.sentByCustomer,
    required this.sentBySeller,
    required this.sentByAdmin,
    required this.sentByDeliveryMan,
    required this.seenByCustomer,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.sellerInfo,
    required this.deliveryMan,
  });

  Chat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    sellerId = json['seller_id'];
    adminId = json['admin_id'];
    if (json['delivery_man_id'] != null) {
      deliveryManId = int.parse(json['delivery_man_id'].toString());
    }

    message = json['message'];
    sentByCustomer = json['sent_by_customer'];
    sentBySeller = json['sent_by_seller'];
    sentByAdmin = json['sent_by_admin'];
    sentByDeliveryMan = json['sent_by_delivery_man'];
    seenByCustomer = json['seen_by_customer'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    sellerInfo = (json['seller_info'] != null
        ? SellerInfo.fromJson(json['seller_info'])
        : null)!;
    deliveryMan = (json['delivery_man'] != null
        ? DeliveryMan.fromJson(json['delivery_man'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['seller_id'] = this.sellerId;
    data['admin_id'] = this.adminId;
    data['delivery_man_id'] = this.deliveryManId;
    data['message'] = this.message;
    data['sent_by_customer'] = this.sentByCustomer;
    data['sent_by_seller'] = this.sentBySeller;
    data['sent_by_admin'] = this.sentByAdmin;
    data['sent_by_delivery_man'] = this.sentByDeliveryMan;
    data['seen_by_customer'] = this.seenByCustomer;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['delivery_man'] = deliveryMan.toJson();
    data['seller_info'] = sellerInfo.toJson();
    return data;
  }
}

class SellerInfo {
  late List<Shops> shops;

  SellerInfo({required this.shops});

  SellerInfo.fromJson(Map<String, dynamic> json) {
    if (json['shops'] != null) {
      shops = <Shops>[];
      json['shops'].forEach((v) {
        shops.add(Shops.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['shops'] = shops.map((v) => v.toJson()).toList();
    return data;
  }
}

class Shops {
  late int id;
  late int sellerId;
  late String name;
  late String image;

  Shops({
    required this.id,
    required this.sellerId,
    required this.name,
    required this.image,
  });

  Shops.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['seller_id'] != null) {
      sellerId = int.parse(json['seller_id'].toString());
    }

    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['seller_id'] = sellerId;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}

class DeliveryMan {
  late int id;
  late String fName;
  late String lName;
  late String image;

  DeliveryMan({
    required this.id,
    required this.fName,
    required this.lName,
    required this.image,
  });

  DeliveryMan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['image'] = this.image;
    return data;
  }
}
