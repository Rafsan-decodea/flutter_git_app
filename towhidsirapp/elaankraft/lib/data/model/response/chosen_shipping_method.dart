class ChosenShippingMethodModel {
  late int _id;
  late String _cartGroupId;
  late int _shippingMethodId;
  late double _shippingCost;
  late String _createdAt;
  late String _updatedAt;

  ChosenShippingMethodModel(
      {required int id,
      required String cartGroupId,
      required int shippingMethodId,
      required double shippingCost,
      required String createdAt,
      required String updatedAt}) {
    this._id = id;
    this._cartGroupId = cartGroupId;
    this._shippingMethodId = shippingMethodId;
    this._shippingCost = shippingCost;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  String get cartGroupId => _cartGroupId;
  int get shippingMethodId => _shippingMethodId;
  double get shippingCost => _shippingCost;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  ChosenShippingMethodModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _cartGroupId = json['cart_group_id'];
    _shippingMethodId = int.parse(json['shipping_method_id'].toString());
    _shippingCost = double.parse(json['shipping_cost'].toString());
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['cart_group_id'] = this._cartGroupId;
    data['shipping_method_id'] = this._shippingMethodId;
    data['shipping_cost'] = this._shippingCost;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}
