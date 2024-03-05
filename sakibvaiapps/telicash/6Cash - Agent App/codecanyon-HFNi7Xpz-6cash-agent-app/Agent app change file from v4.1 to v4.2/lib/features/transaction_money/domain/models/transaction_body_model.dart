import 'dart:convert';

TransactionBodyModel transactionBodyFromJson(String str) => TransactionBodyModel.fromJson(json.decode(str));

class TransactionBodyModel {
  TransactionBodyModel({
    this.message,
  });

  String? message;

  factory TransactionBodyModel.fromJson(Map<String, dynamic> json) => TransactionBodyModel(
    message: json["message"].toString().toUpperCase(),
  );
}
