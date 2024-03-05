import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/transaction_controller.dart';
import 'package:six_cash/features/history/controllers/transaction_history_controller.dart';
import 'package:six_cash/helper/currency_text_input_formatter.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/app_constants.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';

class InputBoxWidget extends StatelessWidget {
  final TextEditingController inputAmountController;
  final FocusNode? focusNode;

  const InputBoxWidget({
    Key? key,
    required this.inputAmountController, this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionMoneyController>(
        builder: (transactionMoneyController) {
          return Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetBuilder<TransactionMoneyController>(
                builder: (controller) => controller.isLoading ? const _InputFieldShimmer() :
                Column(children: [
                  Stack(children: [
                    Container(color: Theme.of(context).cardColor,
                      child: Column(
                        children: [ Container( width: context.width * 0.6,
                          padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeLarge),
                          child: TextField(inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(
                              Get.find<SplashController>().configModel!.currencyPosition == 'left' ?
                              AppConstants.balanceInputLen + (AppConstants.balanceInputLen / 3).floor(
                              ) + Get.find<SplashController>().configModel!.currencySymbol!.length :

                              AppConstants.balanceInputLen + (AppConstants.balanceInputLen / 3).ceil(
                              ) + Get.find<SplashController>().configModel!.currencySymbol!.length,

                            ),

                            CurrencyTextInputFormatter(
                              decimalDigits: 0,
                              locale: Get.find<SplashController>().configModel!.currencyPosition == 'left' ? 'en' : 'fr',
                              symbol:'${Get.find<SplashController>().configModel!.currencySymbol}',
                            ),
                          ],
                            keyboardType: const TextInputType.numberWithOptions(decimal: true),
                            controller: inputAmountController,
                            focusNode: focusNode,
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            style: rubikMedium.copyWith(fontSize: 34, color: Theme.of(context).textTheme.titleLarge!.color),
                            decoration: InputDecoration(
                              isCollapsed : true,
                              hintText:PriceConverter.balanceInputHint(),
                              border : InputBorder.none, focusedBorder: const UnderlineInputBorder(),
                              hintStyle: rubikMedium.copyWith(
                                fontSize: 34, color: Theme.of(context).textTheme.titleLarge!.color!.withOpacity(0.7),
                              ),

                            ),

                          ),
                        ),

                          Center( child: GetBuilder<ProfileController>(
                            builder: (profController)=> profController.profileModel == null ? Center(
                              child: CircularProgressIndicator(color: Theme.of(context).textTheme.titleLarge!.color),
                            ) :
                            Text(
                              '${'available_balance'.tr} ${PriceConverter.availableBalance()}',
                              style: rubikRegular.copyWith(
                                fontSize: Dimensions.fontSizeLarge,
                                color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3),
                              ),
                            ),
                          ),),
                          const SizedBox(height: Dimensions.paddingSizeDefault,),


                        ],
                      ),
                    ),
                  ],
                  ),

                  Container(
                    height: Dimensions.dividerSizeMedium,
                    color: Theme.of(context).hintColor.withOpacity(0.1),
                  ),
                ],
                ),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: transactionMoneyController.inputAmountList.map((amount) =>
                    GetBuilder<TransactionMoneyController>(
                      id: 'inputAmountListController',
                      builder: (inputAmountListController) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _RoundedTextSelectionButton(
                          index: inputAmountListController.inputAmountList.indexOf(amount),
                          text: amount.toString(), callBack: (){
                            final configModel = Get.find<SplashController>().configModel!;

                            inputAmountController.text = configModel.currencyPosition == 'left'
                              ? '${configModel.currencySymbol}$amount' : '$amount${configModel.currencySymbol}' ;

                            Get.find<TransactionMoneyController>().selectAmountSet(
                              Get.find<TransactionMoneyController>().inputAmountList.indexOf(amount),
                            );
                        },
                          fromBalanceInput: true,
                        ),
                      ),
                    ),
                ).toList()),
              ),
            ],
          );
        }
    );
  }
}

class _RoundedTextSelectionButton extends StatelessWidget {
  final String text;
  final int index;
  final bool fromBalanceInput;
  final Function? callBack;

  const _RoundedTextSelectionButton({Key? key,
    required this.text,
    required this.index,
    this.fromBalanceInput = false,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: fromBalanceInput && Get.find<TransactionMoneyController>().selectAmount != null ?
        index == Get.find<TransactionMoneyController>().selectAmount ? Theme.of(context).secondaryHeaderColor :
        Theme.of(context).cardColor : (Get.find<TransactionHistoryController>().transactionTypeIndex == index) && !fromBalanceInput ?
        Theme.of(context).secondaryHeaderColor :  Theme.of(context).cardColor,

        borderRadius: BorderRadius.circular(Dimensions.radiusSizeLarge),
        border: Border.all(width: .5,color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3)),
      ),

      child: CustomInkWellWidget(
        onTap: fromBalanceInput ? callBack as void Function()? : () =>Get.find<TransactionHistoryController>().setIndex(index),
        radius: Dimensions.radiusSizeLarge,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeDefault,
            vertical: Dimensions.paddingSizeExtraSmall,
          ),
          child: Text(text,
              style: rubikRegular.copyWith(
                fontSize: fromBalanceInput ? Dimensions.fontSizeLarge :  Dimensions.fontSizeDefault,
              )),
        ),
      ),
    );
  }
}

class _InputFieldShimmer extends StatelessWidget {
  const _InputFieldShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey, highlightColor: Colors.grey[200]!,
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: Dimensions.paddingSizeExtraLarge,
                      bottom: Dimensions.paddingSizeLarge,
                    ),
                    child: TextField(
                      enabled: false,
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      style: rubikMedium.copyWith(fontSize: 34, color: Theme.of(context).primaryColor),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:PriceConverter.balanceInputHint(),
                        hintStyle: rubikMedium.copyWith(
                          fontSize: 34, color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),

                  Center(child: Text(
                    '${'available_balance'.tr} ${PriceConverter.convertPrice(0)}',
                    style: rubikRegular.copyWith(
                      fontSize: Dimensions.fontSizeLarge,
                      color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(Get.isDarkMode ? 0.8 :0.5),
                    ),
                  )),
                  const SizedBox(height: Dimensions.paddingSizeDefault),
                ],
              ),

              Positioned(
                left: Dimensions.paddingSizeLarge,
                bottom: Dimensions.paddingSizeExtraLarge,
                child: Image.asset(Images.logo,width: 50.0),
              ),

              Positioned(
                right: 10, bottom: 5,
                child: Image.asset(
                  Images.inputStackDesing, width: 150.0, filterQuality: FilterQuality.high,
                ),),
            ],
          ),
          Container(height: Dimensions.dividerSizeMedium),

        ],
      ),
    );
  }
}

