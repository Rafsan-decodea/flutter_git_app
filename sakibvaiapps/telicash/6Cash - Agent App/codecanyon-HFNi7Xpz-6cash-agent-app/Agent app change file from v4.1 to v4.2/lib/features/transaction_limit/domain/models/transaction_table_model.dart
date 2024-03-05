import 'package:six_cash/common/models/config_model.dart';
import 'package:six_cash/features/profile/domain/models/profile_model.dart';

class TransactionTableModel{
  final String title;
  final String image;
  final CustomerLimit customerLimit;
  final Transaction transaction;

  TransactionTableModel(this.title, this.image, this.customerLimit, this.transaction);

}