class ConfigModel {
  late int _systemDefaultCurrency;
  late bool _digitalPayment;
  late bool _cod;
  late BaseUrls _baseUrls;
  late StaticUrls _staticUrls;
  late String _aboutUs;
  late String _privacyPolicy;
  late List<Faq> _faq;
  late String _termsConditions;
  late RefundPolicy _refundPolicy;
  late RefundPolicy _returnPolicy;
  late RefundPolicy _cancellationPolicy;
  late List<CurrencyList> _currencyList;
  late String _currencySymbolPosition;
  late bool _maintenanceMode;
  late List<String> _language;
  late List<Colors> _colors;
  late List<String> _unit;
  late String _shippingMethod;
  late String _currencyModel;
  late bool _emailVerification;
  late bool _phoneVerification;
  late String _countryCode;
  late List<SocialLogin> _socialLogin;
  late String _forgetPasswordVerification;
  late Announcement _announcement;
  late String _version;
  late String _businessMode;
  late int _decimalPointSetting;
  late String _inHouseSelectedShippingType;
  late int _billingAddress;
  late int _walletStatus;
  late int _loyaltyPointStatus;
  late int _loyaltyPointExchangeRate;
  late int _loyaltyPointMinimumPoint;
  late String _brandSetting;
  late String _digitalProductSetting;
  late bool _cashOnDelivery;
  late int _deliveryCountryRestriction;
  late int _deliveryZipCodeAreaRestriction;
  late PaymentMethods _paymentMethods;

  ConfigModel(
      {required int systemDefaultCurrency,
      required bool digitalPayment,
      required bool cod,
      required BaseUrls baseUrls,
      required StaticUrls staticUrls,
      required String aboutUs,
      required String privacyPolicy,
      required List<Faq> faq,
      required String termsConditions,
      required RefundPolicy refundPolicy,
      required RefundPolicy returnPolicy,
      required RefundPolicy cancellationPolicy,
      required List<CurrencyList> currencyList,
      required String currencySymbolPosition,
      required bool maintenanceMode,
      required List<String> language,
      required List<Colors> colors,
      required List<String> unit,
      required String shippingMethod,
      required String currencyModel,
      required bool emailVerification,
      required bool phoneVerification,
      required String countryCode,
      required List<SocialLogin> socialLogin,
      required String forgetPasswordVerification,
      required Announcement announcement,
      required String version,
      required String businessMode,
      required int decimalPointSetting,
      required String inHouseSelectedShippingType,
      required int billingAddress,
      required int walletStatus,
      required int loyaltyPointStatus,
      required int loyaltyPointExchangeRate,
      required int loyaltyPointMinimumPoint,
      required String brandSetting,
      required String digitalProductSetting,
      required bool cashOnDelivery,
      required int deliveryCountryRestriction,
      required int deliveryZipCodeAreaRestriction,
      required PaymentMethods paymentMethods}) {
    this._systemDefaultCurrency = systemDefaultCurrency;
    this._digitalPayment = digitalPayment;
    this._cod = cod;
    this._baseUrls = baseUrls;
    this._staticUrls = staticUrls;
    this._aboutUs = aboutUs;
    this._privacyPolicy = privacyPolicy;
    this._faq = faq;
    this._termsConditions = termsConditions;
    if (refundPolicy != null) {
      this._refundPolicy = refundPolicy;
    }
    if (returnPolicy != null) {
      this._returnPolicy = returnPolicy;
    }
    if (cancellationPolicy != null) {
      this._cancellationPolicy = cancellationPolicy;
    }
    this._currencyList = currencyList;
    this._currencySymbolPosition = currencySymbolPosition;
    this._maintenanceMode = maintenanceMode;
    this._language = language;
    this._colors = colors;
    this._unit = unit;
    this._shippingMethod = shippingMethod;
    this._currencyModel = currencyModel;
    this._emailVerification = emailVerification;
    this._phoneVerification = phoneVerification;
    this._countryCode = countryCode;
    this._socialLogin = socialLogin;
    this._forgetPasswordVerification = forgetPasswordVerification;
    this._announcement = announcement;
    this._version = version;
    this._businessMode = businessMode;
    this._decimalPointSetting = decimalPointSetting;
    this._inHouseSelectedShippingType = inHouseSelectedShippingType;
    this._billingAddress = billingAddress;
    this._walletStatus = walletStatus;
    this._loyaltyPointStatus = loyaltyPointStatus;
    this._loyaltyPointExchangeRate = loyaltyPointExchangeRate;
    this._loyaltyPointMinimumPoint = loyaltyPointMinimumPoint;
    this._brandSetting = brandSetting;
    this._digitalProductSetting = digitalProductSetting;

    this._cashOnDelivery = cashOnDelivery;
    this._deliveryCountryRestriction = deliveryCountryRestriction;
    this._deliveryZipCodeAreaRestriction = deliveryZipCodeAreaRestriction;
    this._paymentMethods = paymentMethods;
  }

  int get systemDefaultCurrency => _systemDefaultCurrency;
  bool get digitalPayment => _digitalPayment;
  bool get cod => _cod;
  BaseUrls get baseUrls => _baseUrls;
  StaticUrls get staticUrls => _staticUrls;
  String get aboutUs => _aboutUs;
  String get privacyPolicy => _privacyPolicy;
  List<Faq> get faq => _faq;
  String get termsConditions => _termsConditions;
  RefundPolicy get refundPolicy => _refundPolicy;
  RefundPolicy get returnPolicy => _returnPolicy;
  RefundPolicy get cancellationPolicy => _cancellationPolicy;
  List<CurrencyList> get currencyList => _currencyList;
  String get currencySymbolPosition => _currencySymbolPosition;
  bool get maintenanceMode => _maintenanceMode;
  List<String> get language => _language;
  List<Colors> get colors => _colors;
  List<String> get unit => _unit;
  String get shippingMethod => _shippingMethod;
  String get currencyModel => _currencyModel;
  bool get emailVerification => _emailVerification;
  bool get phoneVerification => _phoneVerification;
  String get countryCode => _countryCode;
  List<SocialLogin> get socialLogin => _socialLogin;
  String get forgetPasswordVerification => _forgetPasswordVerification;
  Announcement get announcement => _announcement;
  String get version => _version;
  String get businessMode => _businessMode;
  int get decimalPointSetting => _decimalPointSetting;
  String get inHouseSelectedShippingType => _inHouseSelectedShippingType;
  int get billingAddress => _billingAddress;
  int get walletStatus => _walletStatus;
  int get loyaltyPointStatus => _loyaltyPointStatus;
  int get loyaltyPointExchangeRate => _loyaltyPointExchangeRate;
  int get loyaltyPointMinimumPoint => _loyaltyPointMinimumPoint;
  String get brandSetting => _brandSetting;
  String get digitalProductSetting => _digitalProductSetting;
  bool get cashOnDelivery => _cashOnDelivery;
  int get deliveryCountryRestriction => _deliveryCountryRestriction;
  int get deliveryZipCodeAreaRestriction => _deliveryZipCodeAreaRestriction;
  PaymentMethods get paymentMethods => _paymentMethods;

  ConfigModel.fromJson(Map<String, dynamic> json) {
    _systemDefaultCurrency = json['system_default_currency'];
    _digitalPayment = json['digital_payment'];
    _cod = json['cash_on_delivery'];
    _baseUrls = (json['base_urls'] != null
        ? new BaseUrls.fromJson(json['base_urls'])
        : null)!;
    _staticUrls = (json['static_urls'] != null
        ? new StaticUrls.fromJson(json['static_urls'])
        : null)!;
    _aboutUs = json['about_us'];
    _privacyPolicy = json['privacy_policy'];
    if (json['faq'] != null) {
      _faq = [];
      json['faq'].forEach((v) {
        _faq.add(new Faq.fromJson(v));
      });
    }
    _termsConditions = json['terms_&_conditions'];
    _refundPolicy = (json['refund_policy'] != null
        ? new RefundPolicy.fromJson(json['refund_policy'])
        : null)!;
    _returnPolicy = (json['return_policy'] != null
        ? new RefundPolicy.fromJson(json['return_policy'])
        : null)!;
    _cancellationPolicy = (json['cancellation_policy'] != null
        ? new RefundPolicy.fromJson(json['cancellation_policy'])
        : null)!;
    if (json['currency_list'] != null) {
      _currencyList = [];
      json['currency_list'].forEach((v) {
        _currencyList.add(new CurrencyList.fromJson(v));
      });
    }
    _currencySymbolPosition = json['currency_symbol_position'];
    _maintenanceMode = json['maintenance_mode'];
    _language = json['language'].cast<String>();
    if (json['colors'] != null) {
      _colors = [];
      json['colors'].forEach((v) {
        _colors.add(new Colors.fromJson(v));
      });
    }

    _unit = json['unit'].cast<String>();
    _shippingMethod = json['shipping_method'];
    _currencyModel = json['currency_model'];
    _emailVerification = json['email_verification'];
    _phoneVerification = json['phone_verification'];
    _countryCode = json['country_code'];
    if (json['social_login'] != null) {
      _socialLogin = [];
      json['social_login'].forEach((v) {
        _socialLogin.add(new SocialLogin.fromJson(v));
      });
    }
    _forgetPasswordVerification = json['forgot_password_verification'];
    _announcement = (json['announcement'] != null
        ? new Announcement.fromJson(json['announcement'])
        : null)!;

    if (json['software_version'] != null) {
      _version = json['software_version'];
    }
    if (json['business_mode'] != null) {
      _businessMode = json['business_mode'];
    }
    if (json['decimal_point_settings'] != null &&
        json['decimal_point_settings'] != "") {
      _decimalPointSetting =
          int.parse(json['decimal_point_settings'].toString());
    }
    if (json['inhouse_selected_shipping_type'] != null) {
      _inHouseSelectedShippingType =
          json['inhouse_selected_shipping_type'].toString();
    } else {
      _inHouseSelectedShippingType = 'order_wise';
    }
    if (json['billing_input_by_customer'] != null) {
      try {
        _billingAddress = json['billing_input_by_customer'];
      } catch (e) {
        _billingAddress =
            int.parse(json['billing_input_by_customer'].toString());
      }
    }

    _walletStatus = json['wallet_status'];
    _loyaltyPointStatus = json['loyalty_point_status'];

    if (json['loyalty_point_exchange_rate'] != null) {
      try {
        _loyaltyPointExchangeRate = json['loyalty_point_exchange_rate'];
      } catch (e) {
        _loyaltyPointExchangeRate =
            int.parse(json['loyalty_point_exchange_rate'].toString());
      }
    }

    if (json['loyalty_point_minimum_point'] != null) {
      try {
        _loyaltyPointMinimumPoint = json['loyalty_point_minimum_point'];
      } catch (e) {
        _loyaltyPointMinimumPoint =
            int.parse(json['loyalty_point_minimum_point'].toString());
      }
    }

    _brandSetting = json['brand_setting'].toString();
    _digitalProductSetting = json['digital_product_setting'];
    _cashOnDelivery = json['cash_on_delivery'];

    if (json['delivery_country_restriction'] != null) {
      _deliveryCountryRestriction =
          int.parse(json['delivery_country_restriction'].toString());
    } else {
      _deliveryCountryRestriction = 0;
    }
    if (json['delivery_zip_code_area_restriction'] != null) {
      _deliveryZipCodeAreaRestriction =
          int.parse(json['delivery_zip_code_area_restriction'].toString());
    } else {
      _deliveryZipCodeAreaRestriction = 0;
    }

    _paymentMethods = (json['payment_methods'] != null
        ? new PaymentMethods.fromJson(json['payment_methods'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['system_default_currency'] = this._systemDefaultCurrency;
    data['digital_payment'] = this._digitalPayment;
    data['cash_on_delivery'] = this._cod;
    if (this._baseUrls != null) {
      data['base_urls'] = this._baseUrls.toJson();
    }
    if (this._staticUrls != null) {
      data['static_urls'] = this._staticUrls.toJson();
    }
    data['about_us'] = this._aboutUs;
    data['privacy_policy'] = this._privacyPolicy;
    if (this._faq != null) {
      data['faq'] = this._faq.map((v) => v.toJson()).toList();
    }
    data['terms_&_conditions'] = this._termsConditions;
    if (this._refundPolicy != null) {
      data['refund_policy'] = this._refundPolicy.toJson();
    }
    if (this._returnPolicy != null) {
      data['return_policy'] = this._returnPolicy.toJson();
    }
    if (this._cancellationPolicy != null) {
      data['cancellation_policy'] = this._cancellationPolicy.toJson();
    }
    if (this._currencyList != null) {
      data['currency_list'] =
          this._currencyList.map((v) => v.toJson()).toList();
    }
    data['currency_symbol_position'] = this._currencySymbolPosition;
    data['maintenance_mode'] = this._maintenanceMode;
    data['language'] = this._language;
    data['colors'] = this._colors.map((v) => v.toJson()).toList();
    data['unit'] = this._unit;
    data['shipping_method'] = this._shippingMethod;
    data['currency_model'] = this._currencyModel;
    data['email_verification'] = this._emailVerification;
    data['phone_verification'] = this._phoneVerification;
    data['country_code'] = this._countryCode;
    data['social_login'] = this._socialLogin.map((v) => v.toJson()).toList();
    data['forgot_password_verification'] = this._forgetPasswordVerification;
    data['announcement'] = this._announcement.toJson();
    data['software_version'] = this._version;
    data['business_mode'] = this._businessMode;
    data['decimal_point_settings'] = this._decimalPointSetting;
    data['inhouse_selected_shipping_type'] = this._inHouseSelectedShippingType;
    data['wallet_status'] = this._walletStatus;
    data['loyalty_point_status'] = this._loyaltyPointStatus;
    data['loyalty_point_exchange_rate'] = this._loyaltyPointExchangeRate;
    data['loyalty_point_minimum_point'] = this._loyaltyPointMinimumPoint;
    data['brand_setting'] = this._brandSetting;
    data['digital_product_setting'] = this._digitalProductSetting;
    data['cash_on_delivery'] = this._cashOnDelivery;
    data['delivery_country_restriction'] = this._deliveryCountryRestriction;
    data['delivery_zip_code_area_restriction'] =
        this._deliveryZipCodeAreaRestriction;
    if (this._paymentMethods != null) {
      data['payment_methods'] = this._paymentMethods.toJson();
    }
    return data;
  }
}

class BaseUrls {
  late String _productImageUrl;
  late String _productThumbnailUrl;
  late String _brandImageUrl;
  late String _customerImageUrl;
  late String _bannerImageUrl;
  late String _categoryImageUrl;
  late String _reviewImageUrl;
  late String _sellerImageUrl;
  late String _shopImageUrl;
  late String _notificationImageUrl;
  late String _digitalProductUrl;
  late String _deliveryManImage;

  BaseUrls({
    required String productImageUrl,
    required String productThumbnailUrl,
    required String brandImageUrl,
    required String customerImageUrl,
    required String bannerImageUrl,
    required String categoryImageUrl,
    required String reviewImageUrl,
    required String sellerImageUrl,
    required String shopImageUrl,
    required String notificationImageUrl,
    required String digitalProductUrl,
    required String deliveryManImage,
  }) {
    this._productImageUrl = productImageUrl;
    this._productThumbnailUrl = productThumbnailUrl;
    this._brandImageUrl = brandImageUrl;
    this._customerImageUrl = customerImageUrl;
    this._bannerImageUrl = bannerImageUrl;
    this._categoryImageUrl = categoryImageUrl;
    this._reviewImageUrl = reviewImageUrl;
    this._sellerImageUrl = sellerImageUrl;
    this._shopImageUrl = shopImageUrl;
    this._notificationImageUrl = notificationImageUrl;
    if (digitalProductUrl != null) {
      this._digitalProductUrl = digitalProductUrl;
    }
    this._deliveryManImage = deliveryManImage;
  }

  String get productImageUrl => _productImageUrl;
  String get productThumbnailUrl => _productThumbnailUrl;
  String get brandImageUrl => _brandImageUrl;
  String get customerImageUrl => _customerImageUrl;
  String get bannerImageUrl => _bannerImageUrl;
  String get categoryImageUrl => _categoryImageUrl;
  String get reviewImageUrl => _reviewImageUrl;
  String get sellerImageUrl => _sellerImageUrl;
  String get shopImageUrl => _shopImageUrl;
  String get notificationImageUrl => _notificationImageUrl;
  String get digitalProductUrl => _digitalProductUrl;
  String get deliveryManImage => _deliveryManImage;

  BaseUrls.fromJson(Map<String, dynamic> json) {
    _productImageUrl = json['product_image_url'];
    _productThumbnailUrl = json['product_thumbnail_url'];
    _brandImageUrl = json['brand_image_url'];
    _customerImageUrl = json['customer_image_url'];
    _bannerImageUrl = json['banner_image_url'];
    _categoryImageUrl = json['category_image_url'];
    _reviewImageUrl = json['review_image_url'];
    _sellerImageUrl = json['seller_image_url'];
    _shopImageUrl = json['shop_image_url'];
    _notificationImageUrl = json['notification_image_url'];
    _digitalProductUrl = json['digital_product_url'];
    _deliveryManImage = json['delivery_man_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_image_url'] = this._productImageUrl;
    data['product_thumbnail_url'] = this._productThumbnailUrl;
    data['brand_image_url'] = this._brandImageUrl;
    data['customer_image_url'] = this._customerImageUrl;
    data['banner_image_url'] = this._bannerImageUrl;
    data['category_image_url'] = this._categoryImageUrl;
    data['review_image_url'] = this._reviewImageUrl;
    data['seller_image_url'] = this._sellerImageUrl;
    data['shop_image_url'] = this._shopImageUrl;
    data['notification_image_url'] = this._notificationImageUrl;
    data['digital_product_url'] = this._digitalProductUrl;
    data['delivery_man_image_url'] = this._deliveryManImage;
    return data;
  }
}

class StaticUrls {
  late String _contactUs;
  late String _brands;
  late String _categories;
  late String _customerAccount;

  StaticUrls(
      {required String contactUs,
      required String brands,
      required String categories,
      required String customerAccount}) {
    this._contactUs = contactUs;
    this._brands = brands;
    this._categories = categories;
    this._customerAccount = customerAccount;
  }

  String get contactUs => _contactUs;
  String get brands => _brands;
  String get categories => _categories;
  String get customerAccount => _customerAccount;

  StaticUrls.fromJson(Map<String, dynamic> json) {
    _contactUs = json['contact_us'];
    _brands = json['brands'];
    _categories = json['categories'];
    _customerAccount = json['customer_account'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact_us'] = this._contactUs;
    data['brands'] = this._brands;
    data['categories'] = this._categories;
    data['customer_account'] = this._customerAccount;
    return data;
  }
}

class SocialLogin {
  late String _loginMedium;
  late bool _status;

  SocialLogin({required String loginMedium, required bool status}) {
    this._loginMedium = loginMedium;
    this._status = status;
  }

  String get loginMedium => _loginMedium;
  bool get status => _status;

  SocialLogin.fromJson(Map<String, dynamic> json) {
    _loginMedium = json['login_medium'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login_medium'] = this._loginMedium;
    data['status'] = this._status;
    return data;
  }
}

class Faq {
  late int _id;
  late String _question;
  late String _answer;
  late int _ranking;
  late int _status;
  late String _createdAt;
  late String _updatedAt;

  Faq(
      {required int id,
      required String question,
      required String answer,
      required int ranking,
      required int status,
      required String createdAt,
      required String updatedAt}) {
    this._id = id;
    this._question = question;
    this._answer = answer;
    this._ranking = ranking;
    this._status = status;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  String get question => _question;
  String get answer => _answer;
  int get ranking => _ranking;
  int get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  Faq.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _question = json['question'];
    _answer = json['answer'];
    _ranking = json['ranking'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['question'] = this._question;
    data['answer'] = this._answer;
    data['ranking'] = this._ranking;
    data['status'] = this._status;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}

class CurrencyList {
  late int _id;
  late String _name;
  late String _symbol;
  late String _code;
  late double _exchangeRate;
  late int _status;
  late String _createdAt;
  late String _updatedAt;

  CurrencyList(
      {required int id,
      required String name,
      required String symbol,
      required String code,
      required double exchangeRate,
      required int status,
      required String createdAt,
      required String updatedAt}) {
    this._id = id;
    this._name = name;
    this._symbol = symbol;
    this._code = code;
    this._exchangeRate = exchangeRate;
    this._status = status;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  String get name => _name;
  String get symbol => _symbol;
  String get code => _code;
  double get exchangeRate => _exchangeRate;
  int get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  CurrencyList.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _symbol = json['symbol'];
    _code = json['code'];
    _exchangeRate = json['exchange_rate'].toDouble();
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['symbol'] = this._symbol;
    data['code'] = this._code;
    data['exchange_rate'] = this._exchangeRate;
    data['status'] = this._status;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}

class Colors {
  late int _id;
  late String _name;
  late String _code;
  late String _createdAt;
  late String _updatedAt;

  Colors(
      {required int id,
      required String name,
      required String code,
      required String createdAt,
      required String updatedAt}) {
    this._id = id;
    this._name = name;
    this._code = code;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  String get name => _name;
  String get code => _code;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  Colors.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _code = json['code'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['code'] = this._code;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}

class Announcement {
  late String _status;
  late String _color;
  late String _textColor;
  late String _announcement;

  Announcement(
      {required String status,
      required String color,
      required String textColor,
      required String announcement}) {
    this._status = status;
    this._color = color;
    this._textColor = textColor;
    this._announcement = announcement;
  }

  String get status => _status;
  String get color => _color;
  String get textColor => _textColor;
  String get announcement => _announcement;
  Announcement.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _color = json['color'];
    _textColor = json['text_color'];
    _announcement = json['announcement'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['color'] = this._color;
    data['text_color'] = this._textColor;
    data['announcement'] = this._announcement;
    return data;
  }
}

class RefundPolicy {
  late int _status;
  late String _content;

  RefundPolicy({required int status, required String content}) {
    this._status = status;
    this._content = content;
  }

  int get status => _status;
  String get content => _content;

  RefundPolicy.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['content'] = this._content;
    return data;
  }
}

class PaymentMethods {
  late bool _offlinePayment;
  late bool _sslCommerzPayment;
  late bool _paypal;
  late bool _stripe;
  late bool _razorPay;
  late bool _senangPay;
  late bool _paytabs;
  late bool _paystack;
  late bool _paymobAccept;
  late bool _fawryPay;
  late bool _mercadopago;
  late bool _liqpay;
  late bool _flutterwave;
  late bool _paytm;
  late bool _bkash;

  PaymentMethods(
      {required bool offlinePayment,
      required bool sslCommerzPayment,
      required bool paypal,
      required bool stripe,
      required bool razorPay,
      required bool senangPay,
      required bool paytabs,
      required bool paystack,
      required bool paymobAccept,
      required bool fawryPay,
      required bool mercadopago,
      required bool liqpay,
      required bool flutterwave,
      required bool paytm,
      required bool bkash}) {
    this._offlinePayment = offlinePayment;
    this._sslCommerzPayment = sslCommerzPayment;
    this._paypal = paypal;
    this._stripe = stripe;
    this._razorPay = razorPay;
    this._senangPay = senangPay;
    this._paytabs = paytabs;
    this._paystack = paystack;
    this._paymobAccept = paymobAccept;
    this._fawryPay = fawryPay;
    this._mercadopago = mercadopago;
    this._liqpay = liqpay;
    this._flutterwave = flutterwave;
    this._paytm = paytm;
    this._bkash = bkash;
  }

  bool get offlinePayment => _offlinePayment;
  bool get sslCommerzPayment => _sslCommerzPayment;
  bool get paypal => _paypal;
  bool get stripe => _stripe;
  bool get razorPay => _razorPay;
  bool get senangPay => _senangPay;
  bool get paytabs => _paytabs;
  bool get paystack => _paystack;
  bool get paymobAccept => _paymobAccept;
  bool get fawryPay => _fawryPay;
  bool get mercadopago => _mercadopago;
  bool get liqpay => _liqpay;
  bool get flutterwave => _flutterwave;
  bool get paytm => _paytm;
  bool get bkash => _bkash;

  PaymentMethods.fromJson(Map<String, dynamic> json) {
    _offlinePayment = json['offline_payment'];
    _sslCommerzPayment = json['ssl_commerz_payment'];
    _paypal = json['paypal'];
    _stripe = json['stripe'];
    _razorPay = json['razor_pay'];
    _senangPay = json['senang_pay'];
    _paytabs = json['paytabs'];
    _paystack = json['paystack'];
    _paymobAccept = json['paymob_accept'];
    _fawryPay = json['fawry_pay'];
    _mercadopago = json['mercadopago'];
    _liqpay = json['liqpay'];
    _flutterwave = json['flutterwave'];
    _paytm = json['paytm'];
    _bkash = json['bkash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offline_payment'] = this._offlinePayment;
    data['ssl_commerz_payment'] = this._sslCommerzPayment;
    data['paypal'] = this._paypal;
    data['stripe'] = this._stripe;
    data['razor_pay'] = this._razorPay;
    data['senang_pay'] = this._senangPay;
    data['paytabs'] = this._paytabs;
    data['paystack'] = this._paystack;
    data['paymob_accept'] = this._paymobAccept;
    data['fawry_pay'] = this._fawryPay;
    data['mercadopago'] = this._mercadopago;
    data['liqpay'] = this._liqpay;
    data['flutterwave'] = this._flutterwave;
    data['paytm'] = this._paytm;
    data['bkash'] = this._bkash;
    return data;
  }
}
