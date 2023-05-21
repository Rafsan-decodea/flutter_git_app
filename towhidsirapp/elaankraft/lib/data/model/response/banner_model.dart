import 'package:flutter_sixvalley_ecommerce/data/model/response/product_model.dart';

class BannerModel {
  late int id;
  late String photo;
  late String bannerType;
  late int published;
  late String createdAt;
  late String updatedAt;
  late String url;
  late String resourceType;
  late int resourceId;
  late Product product;

  BannerModel(
      {required this.id,
      required this.photo,
      required this.bannerType,
      required this.published,
      required this.createdAt,
      required this.updatedAt,
      required this.url,
      required this.resourceType,
      required this.resourceId,
      required this.product});

  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photo = json['photo'];
    bannerType = json['banner_type'];
    published = json['published'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    url = json['url'];
    resourceType = json['resource_type'];
    resourceId = json['resource_id'];
    product = (json['product'] != null
        ? new Product.fromJson(json['product'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['photo'] = this.photo;
    data['banner_type'] = this.bannerType;
    data['published'] = this.published;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['url'] = this.url;
    data['resource_type'] = this.resourceType;
    data['resource_id'] = this.resourceId;
    data['product'] = this.product.toJson();
    return data;
  }
}
