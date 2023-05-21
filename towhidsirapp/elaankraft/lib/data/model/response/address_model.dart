class AddressModel {
  late final int id;
  late final int customerId;
  late final String contactPersonName;
  late final String addressType;
  late final String address;
  late final String city;
  late final String zip;
  late final String phone;
  late final String createdAt;
  late final String updatedAt;
  late final String state;
  late final String country;
  late final String latitude;
  late final String longitude;
  late final int isBilling;

  AddressModel(
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
      required this.state,
      required this.country,
      required this.latitude,
      required this.longitude,
      required this.isBilling});

  AddressModel.fromJson(
      Map<String, dynamic> json,
      this.id,
      this.customerId,
      this.contactPersonName,
      this.addressType,
      this.address,
      this.city,
      this.zip,
      this.phone,
      this.createdAt,
      this.updatedAt,
      this.state,
      this.country,
      this.latitude,
      this.longitude,
      this.isBilling) {
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
    state = json['state'];
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
    data['state'] = this.state;
    data['country'] = this.country;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['is_billing'] = this.isBilling;
    return data;
  }
}
