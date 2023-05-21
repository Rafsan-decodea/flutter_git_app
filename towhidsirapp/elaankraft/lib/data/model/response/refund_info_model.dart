class RefundInfoModel {
  late bool alreadyRequested;
  late bool expired;
  late Refund refund;

  RefundInfoModel(
      {required this.alreadyRequested,
      required this.expired,
      required this.refund});

  RefundInfoModel.fromJson(Map<String, dynamic> json) {
    alreadyRequested = json['already_requested'];
    expired = json['expired'];
    refund =
        (json['refund'] != null ? new Refund.fromJson(json['refund']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['already_requested'] = this.alreadyRequested;
    data['expired'] = this.expired;
    if (this.refund != null) {
      data['refund'] = this.refund.toJson();
    }
    return data;
  }
}

class Refund {
  late double productPrice;
  late int quntity;
  late double productTotalDiscount;
  late double productTotalTax;
  late double subtotal;
  late double couponDiscount;
  late double refundAmount;

  Refund(
      {required this.productPrice,
      required this.quntity,
      required this.productTotalDiscount,
      required this.productTotalTax,
      required this.subtotal,
      required this.couponDiscount,
      required this.refundAmount});

  Refund.fromJson(Map<String, dynamic> json) {
    productPrice = json['product_price'].toDouble();
    quntity = json['quntity'];
    productTotalDiscount = json['product_total_discount'].toDouble();
    productTotalTax = json['product_total_tax'].toDouble();
    subtotal = json['subtotal'].toDouble();
    couponDiscount = json['coupon_discount'].toDouble();
    refundAmount = json['refund_amount'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_price'] = this.productPrice;
    data['quntity'] = this.quntity;
    data['product_total_discount'] = this.productTotalDiscount;
    data['product_total_tax'] = this.productTotalTax;
    data['subtotal'] = this.subtotal;
    data['coupon_discount'] = this.couponDiscount;
    data['refund_amount'] = this.refundAmount;
    return data;
  }
}
