
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/transaction_money/controllers/transaction_controller.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/features/history/widgets/history_view_widget.dart';

class ExpandableContentWidget extends StatefulWidget {
  const ExpandableContentWidget({ Key? key}) : super(key: key);

  @override
  State<ExpandableContentWidget> createState() =>
      _ExpandableContentWidgetState();
}

class _ExpandableContentWidgetState extends State<ExpandableContentWidget> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionMoneyController>(
      builder: (transactionController) {
        return Container(
          color: Theme.of(context).cardColor,
          height: MediaQuery.of(context).size.height  * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeLarge),
                  child: Text(
                    'all_transaction'.tr,
                    style: rubikMedium.copyWith(
                      fontSize: Dimensions.fontSizeLarge,
                      color: Theme.of(context).textTheme.titleLarge!.color,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault),

              Expanded(flex: 10, child: Container(
                color: ColorResources.getBackgroundColor(),
                child: SingleChildScrollView(
                  controller: scrollController, physics: const BouncingScrollPhysics(),
                  child: TransactionWidget(isHome: true, scrollController: scrollController),
                ),
              )),
            ],
          ),
        );
      }
    );
  }
}
