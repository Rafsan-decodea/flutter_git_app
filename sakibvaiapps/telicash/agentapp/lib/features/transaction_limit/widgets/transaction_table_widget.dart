import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/transaction_limit/domain/models/transaction_table_model.dart';
import 'package:six_cash/features/transaction_limit/widgets/transaction_item_widget.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';

class TransactionTableWidget extends StatelessWidget {
  final TransactionTableModel tableModel;
  final int tabIndex;

  const TransactionTableWidget({
    Key? key,
    required this.tableModel, required this.tabIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(5),
      ),

      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Expanded(flex: 3, child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall),
              decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Theme.of(context).primaryColor.withOpacity(0.1), width: 1)),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Image.asset(tableModel.image, width: Dimensions.paddingSizeExtraLarge),
                  const SizedBox(height: Dimensions.paddingSizeExtraSmall),

                  Text(tableModel.title, style: rubikMedium.copyWith(fontSize: Dimensions.fontSizeDefault)),
                ],
              ),

            )),

            Expanded(
              flex: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: Dimensions.paddingSizeSmall),

                  TransactionItemWidget(
                    title: 'transaction'.tr,
                    timeCount: tabIndex == 0
                        ?  tableModel.transaction.dailyCount
                        : tableModel.transaction.monthlyCount,
                    subTitle: ' (${'max'.tr} ${tabIndex == 0
                        ? tableModel.customerLimit.transactionLimitPerDay
                        : tableModel.customerLimit.transactionLimitPerMonth} ${'times'.tr})',
                  ),
                  const SizedBox(height: Dimensions.paddingSizeSmall),

                  TransactionItemWidget(
                    title: 'total_transaction'.tr,
                    amount: tabIndex == 0
                        ? tableModel.transaction.dailyAmount
                        : tableModel.transaction.monthlyAmount,
                    subTitle: ' (${'max'.tr} ${PriceConverter.convertPrice(tabIndex == 0
                        ? tableModel.customerLimit.totalTransactionAmountPerDay
                        : tableModel.customerLimit.totalTransactionAmountPerMonth)})',

                  ),
                  const SizedBox(height: Dimensions.paddingSizeSmall),

                  if(tabIndex == 0) TransactionItemWidget(
                    title: 'max_amount_per_transaction'.tr,
                    amount: tabIndex == 0
                        ? tableModel.customerLimit.maxAmountPerTransaction
                        : tableModel.customerLimit.maxAmountPerTransaction,
                  ),
                  const SizedBox(height: Dimensions.paddingSizeSmall),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
