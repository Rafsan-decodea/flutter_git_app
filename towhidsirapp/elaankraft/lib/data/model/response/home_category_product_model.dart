import 'package:flutter_sixvalley_ecommerce/data/model/response/product_model.dart';

class HomeCategoryProduct {
  late int id;
  late String name;
  late String slug;
  late String icon;
  late int parentId;
  late int position;
  late String createdAt;
  late String updatedAt;
  late List<Product> products;
  late List<dynamic> translations;

  HomeCategoryProduct(
      {required this.id,
      required this.name,
      required this.slug,
      required this.icon,
      required this.parentId,
      required this.position,
      required this.createdAt,
      required this.updatedAt,
      required this.products,
      required this.translations});

  HomeCategoryProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    icon = json['icon'];
    parentId = json['parent_id'];
    position = json['position'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products.add(new Product.fromJson(v));
      });
    }

    if (json['translations'] != null) {
      translations = [];
      translations = List<dynamic>.from(translations.map((x) => x));
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['parent_id'] = this.parentId;
    data['position'] = this.position;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['products'] = this.products.map((v) => v.toJson()).toList();

    data['translations'] = this.translations.map((v) => v.toJson()).toList();
    return data;
  }
}
