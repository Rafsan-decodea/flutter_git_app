import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/language/controllers/localization_controller.dart';
import 'package:six_cash/features/history/domain/models/transaction_model.dart';
import 'package:six_cash/helper/date_converter.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/app_constants.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/util/styles.dart';
class TransactionHistoryCardWidget extends StatelessWidget {
  final Transactions? transactions;
  const TransactionHistoryCardWidget({Key? key, this.transactions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? userPhone;
    String? userName;

    bool isCredit = (transactions?.credit ?? 0) > 0;

     try{
       userPhone = transactions!.transactionType == AppConstants.cashIn
           ? transactions!.sender!.phone : transactions!.transactionType == AppConstants.agentCommission
           ? transactions!.sender!.phone : (transactions!.transactionType == AppConstants.addMoney
           || transactions!.transactionType == 'add_money_bonus')
           ? transactions!.sender!.phone : transactions!.transactionType == AppConstants.receivedMoney
           ? transactions!.sender!.phone : transactions!.transactionType == AppConstants.cashOut
           ? transactions!.receiver!.phone : transactions!.transactionType == AppConstants.withdraw
           ? transactions!.receiver!.phone : '';

       userName = transactions!.transactionType == AppConstants.cashIn
           ? transactions!.sender!.name : transactions!.transactionType == AppConstants.agentCommission
           ? transactions!.sender!.name : (transactions!.transactionType == AppConstants.addMoney
           || transactions!.transactionType == 'add_money_bonus')
           ? transactions!.sender!.name : transactions!.transactionType == AppConstants.receivedMoney
           ? transactions!.sender!.name : transactions!.transactionType == AppConstants.cashOut
           ? transactions!.receiver!.name : transactions!.transactionType == AppConstants.withdraw
           ? transactions!.receiver!.name : '';

     }catch(e){
       userName = 'user_unavailable'.tr;
     }

   String image = transactions!.transactionType == AppConstants.cashIn ? Images.sendMoneyIcon :
    transactions!.transactionType == AppConstants.agentCommission ? Images.referImage :
    transactions!.transactionType == AppConstants.addMoney ? Images.addMoneyLogo3 :
    transactions!.transactionType == AppConstants.receivedMoney ? Images.sendRequestLogo :
    transactions!.transactionType == AppConstants.cashOut ? Images.cashOutLogo3 :
    transactions!.transactionType == AppConstants.withdraw ? Images.withDraw :
    transactions!.transactionType == 'add_money_bonus' ? Images.addMoneyBonus :
    Images.referImage;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeExtraSmall),
      child: Stack(
        children: [
         Column(
          children: [
            Row(
              children: [
                SizedBox(height: 50,width: 50, child: Padding(padding:
                  const EdgeInsets.all(8.0), child: Image.asset(image))),

                const SizedBox(width: 5,),

                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        transactions!.transactionType!.tr,
                        style: rubikMedium.copyWith(fontSize: Dimensions.fontSizeDefault),
                      ),
                      const SizedBox(height: Dimensions.paddingSizeSuperExtraSmall),


                      Text(
                        userName ?? '',
                        style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeExtraSmall),
                        maxLines: 1,overflow: TextOverflow.ellipsis,
                      ),
                      if(userPhone != null) const SizedBox(height: Dimensions.paddingSizeSuperExtraSmall),

                      if(userPhone != null) Text(userPhone, style: rubikMedium.copyWith(fontSize: Dimensions.fontSizeSmall)),
                      const SizedBox(height: Dimensions.paddingSizeSuperExtraSmall),

                      Text('TrxID: ${transactions!.transactionId}',style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeExtraSmall))
                    ]),
                const Spacer(),

                Text('${isCredit ? '+' : '-'} ${PriceConverter.convertPrice(double.parse('${transactions?.amount}'))}',
                  style: rubikMedium.copyWith(
                    fontSize: Dimensions.fontSizeDefault,
                    color: isCredit ? Colors.green : Colors.redAccent,
                  )),

              ],
            ),
            const SizedBox(height: 5),
            const Divider(height: .125),
          ],
        ),
          Get.find<LocalizationController>().isLtr ?  Positioned(
            bottom:  3 ,
              right: 2,
              child: Text(DateConverter.localDateToIsoStringAMPM(DateTime.parse(transactions!.createdAt!)),style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeExtraSmall, color: ColorResources.getHintColor()),),
          ): Positioned(
            bottom:  3 ,
            left: 2,
            child: Text(DateConverter.localDateToIsoStringAMPM(DateTime.parse(transactions!.createdAt!)),style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeExtraSmall, color: ColorResources.getHintColor()),),
          )
        ],
      ),
    );
  }
}
