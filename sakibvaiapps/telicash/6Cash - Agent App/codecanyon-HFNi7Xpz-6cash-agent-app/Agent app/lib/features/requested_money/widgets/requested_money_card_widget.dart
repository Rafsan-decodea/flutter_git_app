import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/common/enums/request_type_enum.dart';
import 'package:six_cash/features/requested_money/domain/models/field_item_model.dart';
import 'package:six_cash/features/requested_money/domain/models/requested_money_model.dart';
import 'package:six_cash/features/requested_money/domain/models/withdraw_histroy_model.dart';
import 'package:six_cash/helper/date_converter.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';

class RequestedMoneyCardWidget extends StatefulWidget {
  final RequestedMoney? requestedMoney;
  final bool? isHome;
  final RequestType? requestType;
  final WithdrawHistory? withdrawHistory;
  final List<FieldItemModel>? itemList;


  const RequestedMoneyCardWidget({
    Key? key, this.requestedMoney,
    this.isHome, this.requestType,
    this.withdrawHistory, this.itemList,
  }) : super(key: key);

  @override
  State<RequestedMoneyCardWidget> createState() => _RequestedMoneyCardWidgetState();
}

class _RequestedMoneyCardWidgetState extends State<RequestedMoneyCardWidget> {
  final TextEditingController reqPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return widget.requestType == RequestType.withdraw ? Card(
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(color: Theme.of(context).primaryColor.withOpacity(0.2)),
          padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
          child: Column(children: [
            MethodFieldView(type: 'withdraw_method'.tr, value: '${widget.withdrawHistory!.methodName}'),

            MethodFieldView(type: 'request_status'.tr, value: widget.withdrawHistory!.requestStatus.tr),

            MethodFieldView(type: 'amount'.tr, value: PriceConverter.balanceWithSymbol(balance: '${widget.withdrawHistory!.amount}')),

            if(widget.requestType == RequestType.withdraw)
              MethodFieldView(type: 'charge'.tr, value: PriceConverter.balanceWithSymbol(balance: '${widget.withdrawHistory!.adminCharge}')),

            if(widget.requestType == RequestType.withdraw)
              MethodFieldView(type: 'total_amount'.tr, value: PriceConverter.balanceWithSymbol(
                balance: '${widget.withdrawHistory!.amount! + widget.withdrawHistory!.adminCharge!}',
              )),
          ],),
        ),

        if(widget.itemList != null) Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
          child: Column(children: widget.itemList!.map((item) => Padding(
            padding: const EdgeInsets.all(3.0),
            child: MethodFieldView(type: item.key.replaceAll('_', ' ').capitalizeFirst!, value: item.value),
          )).toList()),
        ),
      ],
      ),
    ) : Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${widget.requestedMoney!.receiver!.name}', style: rubikMedium.copyWith(color: ColorResources.getTextColor(),fontSize: Dimensions.fontSizeLarge) ),
                    const SizedBox(height: Dimensions.paddingSizeSuperExtraSmall),

                    Text('${'amount'.tr}: ${PriceConverter.balanceWithSymbol(
                        balance: widget.requestedMoney!.amount.toString())}',
                        style: rubikMedium.copyWith(color: Theme.of(context).textTheme.titleLarge!.color,fontSize: Dimensions.fontSizeDefault)
                    ),

                    const SizedBox(height: Dimensions.paddingSizeExtraSmall),

                    Text(DateConverter.localDateToIsoStringAMPM(
                        DateTime.parse(widget.requestedMoney!.createdAt!)),
                        style: rubikLight.copyWith(color: ColorResources.getTextColor(), fontSize: Dimensions.fontSizeSmall)
                    ),
                    const SizedBox(height: Dimensions.paddingSizeSmall),

              ]),
            ],
          ),
          const SizedBox(height: 5),
          widget.isHome! ? const SizedBox() : Divider(height: .5,color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3)),
        ],
      ),
    );
  }
}




class MethodFieldView extends StatelessWidget {
  final String type;
  final String value;
  const MethodFieldView({Key? key, required this.type, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(type, style: rubikLight.copyWith(fontSize: Dimensions.fontSizeDefault),),

          Text(value),
        ],
      ),
    );
  }
}
