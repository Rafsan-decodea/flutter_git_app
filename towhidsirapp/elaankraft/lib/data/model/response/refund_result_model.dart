class RefundResultModel {
  late double productPrice;
  late int quntity;
  late double productTotalDiscount;
  late double productTotalTax;
  late double subtotal;
  late double couponDiscount;
  late double refundAmount;
  late List<RefundRequest> refundRequest;

  RefundResultModel(
      {required this.productPrice,
      required this.quntity,
      required this.productTotalDiscount,
      required this.productTotalTax,
      required this.subtotal,
      required this.couponDiscount,
      required this.refundAmount,
      required this.refundRequest});

  RefundResultModel.fromJson(Map<String, dynamic> json) {
    productPrice = json['product_price'].toDouble();
    quntity = json['quntity'];
    productTotalDiscount = json['product_total_discount'].toDouble();
    productTotalTax = json['product_total_tax'].toDouble();
    subtotal = json['subtotal'].toDouble();
    couponDiscount = json['coupon_discount'].toDouble();
    refundAmount = json['refund_amount'].toDouble();
    if (json['refund_request'] != null) {
      refundRequest = <RefundRequest>[];
      json['refund_request'].forEach((v) {
        refundRequest.add(new RefundRequest.fromJson(v));
      });
    }
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
    data['refund_request'] = this.refundRequest.map((v) => v.toJson()).toList();
    return data;
  }
}

class RefundRequest {
  late int id;
  late int orderDetailsId;
  late int customerId;
  late String status;
  late double amount;
  late int productId;
  late int orderId;
  late String refundReason;
  late List<String> images;
  late String createdAt;
  late String updatedAt;
  late String approvedNote;
  late String rejectedNote;
  late String paymentInfo;
  late String changeBy;

  RefundRequest(
      {required this.id,
      required this.orderDetailsId,
      required this.customerId,
      required this.status,
      required this.amount,
      required this.productId,
      required this.orderId,
      required this.refundReason,
      required this.images,
      required this.createdAt,
      required this.updatedAt,
      required this.approvedNote,
      required this.rejectedNote,
      required this.paymentInfo,
      required this.changeBy});

  RefundRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderDetailsId = json['order_details_id'];
    customerId = json['customer_id'];
    status = json['status'];
    amount = json['amount'].toDouble();
    productId = json['product_id'];
    orderId = json['order_id'];
    refundReason = json['refund_reason'];
    if (json['images'] != null) {
      images = json['images'].cast<String>();
    }

    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    approvedNote = json['approved_note'];
    rejectedNote = json['rejected_note'];
    paymentInfo = json['payment_info'];
    changeBy = json['change_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_details_id'] = this.orderDetailsId;
    data['customer_id'] = this.customerId;
    data['status'] = this.status;
    data['amount'] = this.amount;
    data['product_id'] = this.productId;
    data['order_id'] = this.orderId;
    data['refund_reason'] = this.refundReason;
    data['images'] = this.images;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['approved_note'] = this.approvedNote;
    data['rejected_note'] = this.rejectedNote;
    data['payment_info'] = this.paymentInfo;
    data['change_by'] = this.changeBy;
    return data;
  }
}
