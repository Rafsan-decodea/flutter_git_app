import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';

class TransactionItemWidget extends StatelessWidget {
  final String title;
  final int? timeCount;
  final double? amount;
  final String? subTitle;
  const TransactionItemWidget({
    Key? key, required this.title, this.timeCount, this.amount, this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall),
      child: Container(
        width: context.width,
        padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
        decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(Dimensions.radiusSizeExtraSmall)
        ),
        child: Column(children: [
          Text(title, style: rubikRegular.copyWith(color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7))),
          const SizedBox(height: Dimensions.paddingSizeSmall),

          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                if(timeCount != null) TextSpan(
                  style: rubikMedium.copyWith(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                  text: '$timeCount',
                ),

                if(timeCount != null) TextSpan(
                  style: rubikRegular.copyWith(
                    color: Theme.of(context).textTheme.bodyLarge!.color?.withOpacity(0.7),
                  ),
                  text: ' ${'times'.tr} ',
                ),

                if(amount != null) TextSpan(
                  style: rubikMedium.copyWith(
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                  text: PriceConverter.convertPrice(amount!),
                ),

                if(subTitle != null) TextSpan(
                  style: rubikRegular.copyWith(color: timeCount != null ? Colors.greenAccent : Colors.amber),
                  text: subTitle,
                ),

              ],
            ),
          ),
        ]),
      ),
    );
  }
}
