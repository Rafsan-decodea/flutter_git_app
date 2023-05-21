class OrderModel {
  late int _id;
  late int _customerId;
  late String _customerType;
  late String _paymentStatus;
  late String _orderStatus;
  late String _paymentMethod;
  late String _transactionRef;
  late double _orderAmount;
  late int _shippingAddress;
  late int _billingAddress;
  late ShippingAddressData _shippingAddressData;
  late BillingAddressData _billingAddressData;
  late int _sellerId;
  late int _shippingMethodId;
  late double _shippingCost;
  late String _createdAt;
  late String _updatedAt;
  late double _discountAmount;
  late String _discountType;
  late String _orderNote;
  late String _orderType;
  late double _extraDiscount;
  late String _extraDiscountType;
  late String _thirdPartyServiceName;
  late String _thirdPartyTrackingId;
  late DeliveryMan _deliveryMan;

  OrderModel(
      {required int id,
      required int customerId,
      required String customerType,
      required String paymentStatus,
      required String orderStatus,
      required String paymentMethod,
      required String transactionRef,
      required double orderAmount,
      required int shippingAddress,
      required int billingAddress,
      required ShippingAddressData shippingAddressData,
      required BillingAddressData billingAddressData,
      required int sellerId,
      required int shippingMethodId,
      required double shippingCost,
      required String createdAt,
      required String updatedAt,
      required double discountAmount,
      required String discountType,
      required String orderNote,
      required String orderType,
      required double extraDiscount,
      required String extraDiscountType,
      required String thirdPartyServiceNam,
      required String thirdPartyTrackingId,
      required DeliveryMan deliveryMan}) {
    this._id = id;
    this._customerId = customerId;
    this._customerType = customerType;
    this._paymentStatus = paymentStatus;
    this._orderStatus = orderStatus;
    this._paymentMethod = paymentMethod;
    this._transactionRef = transactionRef;
    this._orderAmount = orderAmount;
    this._shippingAddress = shippingAddress;
    this._shippingAddressData = shippingAddressData;
    this._billingAddress = billingAddress;
    this._billingAddressData = billingAddressData;
    this._sellerId = sellerId;
    this._shippingCost = shippingCost;
    this._shippingMethodId = shippingMethodId;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._discountAmount = discountAmount;
    this._discountType = discountType;
    this._orderNote = orderNote;
    this._orderType = orderType;
    this._extraDiscount = extraDiscount;
    this._extraDiscountType = extraDiscountType;
    this._thirdPartyServiceName = thirdPartyServiceNam;
    this._thirdPartyTrackingId = thirdPartyTrackingId;
    this._deliveryMan = deliveryMan;
  }

  int get id => _id;
  int get customerId => _customerId;
  String get customerType => _customerType;
  String get paymentStatus => _paymentStatus;
  String get orderStatus => _orderStatus;
  String get paymentMethod => _paymentMethod;
  String get transactionRef => _transactionRef;
  double get orderAmount => _orderAmount;
  int get shippingAddress => _shippingAddress;
  ShippingAddressData get shippingAddressData => _shippingAddressData;
  int get billingAddress => _billingAddress;
  BillingAddressData get billingAddressData => _billingAddressData;
  int get shippingMethodId => _shippingMethodId;
  int get sellerId => _sellerId;
  double get shippingCost => _shippingCost;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  double get discountAmount => _discountAmount;
  String get discountType => _discountType;
  String get orderNote => _orderNote;
  String get orderType => _orderType;
  double get extraDiscount => _extraDiscount;
  String get extraDiscountType => _extraDiscountType;
  String get thirdPartyServiceName => _thirdPartyServiceName;
  String get thirdPartyTrackingId => _thirdPartyTrackingId;
  DeliveryMan get deliveryMan => _deliveryMan;

  OrderModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _customerId = json['customer_id'];
    _customerType = json['customer_type'];
    _paymentStatus = json['payment_status'];
    _orderStatus = json['order_status'];
    _paymentMethod = json['payment_method'];
    _transactionRef = json['transaction_ref'];
    _orderAmount = json['order_amount'].toDouble();
    _shippingAddress = json['shipping_address'];
    _shippingAddressData = (json['shipping_address_data'] != null
        ? new ShippingAddressData.fromJson(json['shipping_address_data'])
        : null)!;
    _billingAddress = json['billing_address'];
    _billingAddressData = (json['billing_address_data'] != null
        ? new BillingAddressData.fromJson(json['billing_address_data'])
        : null)!;

    if (json['seller_id'] != null && json['seller_id'] != '') {
      _sellerId = json['seller_id'];
    }
    _shippingMethodId = int.parse(json['shipping_method_id'].toString());
    _shippingCost = double.parse(json['shipping_cost'].toString());
    if (json['created_at'] != null) {
      _createdAt = json['created_at'];
    }
    _updatedAt = json['updated_at'];
    _discountAmount = json['discount_amount'].toDouble();
    _discountType = json['discount_type'];
    _orderNote = json['order_note'];
    _orderType = json['order_type'];
    _extraDiscount = json['extra_discount'].toDouble();
    _extraDiscountType = json['extra_discount_type'];
    if (json['delivery_service_name'] != null &&
        json['delivery_service_name'] != "") {
      _thirdPartyServiceName = json['delivery_service_name'];
    }
    if (json['third_party_delivery_tracking_id'] != null &&
        json['third_party_delivery_tracking_id'] != "") {
      _thirdPartyTrackingId = json['third_party_delivery_tracking_id'];
    }
    _deliveryMan = (json['delivery_man'] != null
        ? new DeliveryMan.fromJson(json['delivery_man'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['customer_id'] = this._customerId;
    data['customer_type'] = this._customerType;
    data['payment_status'] = this._paymentStatus;
    data['order_status'] = this._orderStatus;
    data['payment_method'] = this._paymentMethod;
    data['transaction_ref'] = this._transactionRef;
    data['order_amount'] = this._orderAmount;
    data['shipping_address'] = this._shippingAddress;
    if (this._shippingAddressData != null) {
      data['shipping_address_data'] = this._shippingAddressData.toJson();
    }
    data['billing_address'] = this._billingAddress;
    if (this.billingAddressData != null) {
      data['billing_address_data'] = this.billingAddressData.toJson();
    }
    data['shipping_method_id'] = this._shippingMethodId;
    data['seller_id'] = this._sellerId;
    data['shipping_cost'] = this._shippingCost;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['discount_amount'] = this._discountAmount;
    data['discount_type'] = this._discountType;
    data['order_note'] = this._orderNote;
    data['order_type'] = this._orderType;
    data['extra_discount'] = this._extraDiscount;
    data['extra_discount_type'] = this._extraDiscountType;
    data['delivery_service_name'] = this._thirdPartyServiceName;
    data['third_party_delivery_tracking_id'] = this._thirdPartyTrackingId;
    if (this._deliveryMan != null) {
      data['delivery_man'] = this._deliveryMan.toJson();
    }

    return data;
  }
}

class BillingAddressData {
  late int id;
  late int customerId;
  late String contactPersonName;
  late String addressType;
  late String address;
  late String city;
  late String zip;
  late String phone;
  late String createdAt;
  late String updatedAt;
  late String country;
  late String latitude;
  late String longitude;
  late int isBilling;

  BillingAddressData(
      {required this.id,
      required this.customerId,
      required this.contactPersonName,
      required this.addressType,
      required this.address,
      required this.city,
      required this.zip,
      required this.phone,
      required this.createdAt,
      required this.updatedAt,
      required this.country,
      required this.latitude,
      required this.longitude,
      required this.isBilling});

  BillingAddressData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customer_id'];
    contactPersonName = json['contact_person_name'];
    addressType = json['address_type'];
    address = json['address'];
    city = json['city'];
    zip = json['zip'];
    phone = json['phone'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    country = json['country'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    isBilling = json['is_billing'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_id'] = this.customerId;
    data['contact_person_name'] = this.contactPersonName;
    data['address_type'] = this.addressType;
    data['address'] = this.address;
    data['city'] = this.city;
    data['zip'] = this.zip;
    data['phone'] = this.phone;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['country'] = this.country;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['is_billing'] = this.isBilling;
    return data;
  }
}

class ShippingAddressData {
  late int _id;
  late int _customerId;
  late String _contactPersonName;
  late String _addressType;
  late String _address;
  late String _city;
  late String _zip;
  late String _phone;
  late String _createdAt;
  late String _updatedAt;
  late String _country;

  ShippingAddressData(
      {required int id,
      required int customerId,
      required String contactPersonName,
      required String addressType,
      required String address,
      required String city,
      required String zip,
      required String phone,
      required String createdAt,
      required String updatedAt,
      required Null state,
      required String country}) {
    this._id = id;
    this._customerId = customerId;
    this._contactPersonName = contactPersonName;
    this._addressType = addressType;
    this._address = address;
    this._city = city;
    this._zip = zip;
    this._phone = phone;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;

    this._country = country;
  }

  int get id => _id;
  int get customerId => _customerId;
  String get contactPersonName => _contactPersonName;
  String get addressType => _addressType;
  String get address => _address;
  String get city => _city;
  String get zip => _zip;
  String get phone => _phone;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  String get country => _country;

  ShippingAddressData.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _customerId = json['customer_id'];
    _contactPersonName = json['contact_person_name'];
    _addressType = json['address_type'];
    _address = json['address'];
    _city = json['city'];
    _zip = json['zip'];
    _phone = json['phone'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['customer_id'] = this._customerId;
    data['contact_person_name'] = this._contactPersonName;
    data['address_type'] = this._addressType;
    data['address'] = this._address;
    data['city'] = this._city;
    data['zip'] = this._zip;
    data['phone'] = this._phone;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['country'] = this._country;
    return data;
  }
}

class DeliveryMan {
  late int _id;
  late String _fName;
  late String _lName;
  late String _phone;
  late String _email;
  late String _image;
  DeliveryMan(
      {required int id,
      required String fName,
      required String lName,
      required String phone,
      required String email,
      required String image}) {
    this._id = id;
    this._fName = fName;
    this._lName = lName;
    this._phone = phone;
    this._email = email;

    this._image = image;
  }

  int get id => _id;
  String get fName => _fName;
  String get lName => _lName;
  String get phone => _phone;
  String get email => _email;
  String get image => _image;

  DeliveryMan.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fName = json['f_name'];
    _lName = json['l_name'];
    _phone = json['phone'];
    _email = json['email'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this._id;
    data['f_name'] = this._fName;
    data['l_name'] = this._lName;
    data['phone'] = this._phone;
    data['email'] = this._email;
    data['image'] = this._image;
    return data;
  }
}
