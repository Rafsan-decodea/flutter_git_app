import 'package:flutter_sixvalley_ecommerce/data/model/response/product_model.dart';

class WishListModel {
  late int id;
  late int customerId;
  late int productId;
  late String createdAt;
  late String updatedAt;
  late Product product;

  WishListModel(
      {required this.id,
      required this.customerId,
      required this.productId,
      required this.createdAt,
      required this.updatedAt,
      required this.product});

  WishListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customer_id'];
    productId = json['product_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    product = (json['product'] != null
        ? new Product.fromJson(json['product'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_id'] = this.customerId;
    data['product_id'] = this.productId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['product'] = this.product.toJson();
    return data;
  }
}
