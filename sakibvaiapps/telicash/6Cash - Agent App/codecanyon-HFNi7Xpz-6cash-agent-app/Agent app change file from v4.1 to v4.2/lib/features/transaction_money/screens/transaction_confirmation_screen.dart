import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/bootom_slider_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/transaction_controller.dart';
import 'package:six_cash/common/models/contact_model.dart';
import 'package:six_cash/features/transaction_money/domain/models/withdraw_model.dart';
import 'package:six_cash/helper/transaction_type.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_pin_code_field_widget.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/common/widgets/demo_otp_hint_widget.dart';
import 'package:six_cash/features/transaction_money/widgets/preview_amount_widget.dart';

import '../widgets/bottom_sheet_slider_widget.dart';
import '../widgets/person_preview_widget.dart';

class TransactionConfirmationScreen extends StatelessWidget {
  final double? inputBalance;
  final String? transactionType;
  final ContactModel? contactModel;
  final WithdrawalMethod? withdrawMethod;
  final Function? callBack;

  TransactionConfirmationScreen({Key? key,
    required this.inputBalance,
    required this.transactionType,
    this.contactModel,
    this.withdrawMethod,
    this.callBack,
  }) : super(key: key);

  final _pinCodeFieldController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final bottomSliderController = Get.find<BottomSliderController>();

    bottomSliderController.setIsPinCompleted(isCompleted: false, isNotify: false);

    return Scaffold(
      appBar: CustomAppbarWidget(
        title: transactionType!.tr,
        onTap: () => Get.back()
      ),

      body:  SingleChildScrollView(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(transactionType != TransactionType.withdrawRequest)
                PersonPreviewWidget(contactModel: contactModel),


              PreviewAmountWidget(amountText:  inputBalance?.toStringAsFixed(2) ?? "", onTap: callBack ),

              if(transactionType == TransactionType.withdrawRequest)
                PreviewAmountWidget(
                  amountText: PriceConverter.calculation(inputBalance, Get.find<SplashController>().configModel!.withdrawChargePercent, true).toStringAsFixed(2),
                  title: 'charge'.tr,
                ),

              if(transactionType == TransactionType.withdrawRequest)
                PreviewAmountWidget(amountText:  PriceConverter.balanceWithCharge(
                  inputBalance, Get.find<SplashController>().configModel!.withdrawChargePercent, true,
                ).toStringAsFixed(2), title: 'total_amount'.tr),

              if(transactionType != TransactionType.withdrawRequest)
                Container(
                  height: Dimensions.dividerSizeMedium,
                  color: Theme.of(context).dividerColor,
                ),

              if(transactionType == TransactionType.withdrawRequest)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSizeDefault,
                    vertical: Dimensions.paddingSizeSmall,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),

                    child: Column(children: [

                      _methodFieldView(
                        type: 'withdraw_method'.tr, value: withdrawMethod!.methodName!,
                      ),
                      const SizedBox(height: 10,),

                      Column(
                        children: withdrawMethod!.methodFields.map((method) =>
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: _methodFieldView(type: method.inputName!.replaceAll('_', ' ').capitalizeFirst!, value: method.inputValue!,),
                          ),
                      ).toList(),),

                    ]),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: Dimensions.paddingSizeExtraExtraLarge,
                        bottom:Dimensions.paddingSizeDefault,
                      ),
                      child: Text('4digit_pin'.tr,
                        style: rubikMedium.copyWith(fontSize: Dimensions.fontSizeLarge),
                      ),
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center, height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(27.0),
                              color: ColorResources.getGreyBaseGray6(),
                            ),
                            child:PinCodeTextField(
                              controller: _pinCodeFieldController,
                              length: 4, appContext:  context,
                              onChanged: (value) => bottomSliderController.onChangePinCompletedStatus(value),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                              obscureText: true, hintCharacter: '•',
                              hintStyle: rubikMedium.copyWith(color: ColorResources.getGreyBaseGray4()),
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              cursorColor: Theme.of(context).highlightColor,
                              pinTheme: PinTheme.defaults(
                                shape: PinCodeFieldShape.circle,
                                activeColor: ColorResources.getGreyBaseGray6(),
                                activeFillColor: Colors.red,
                                selectedColor: ColorResources.getGreyBaseGray6(),
                                borderWidth: 0,
                                inactiveColor: ColorResources.getGreyBaseGray6(),
                              ),
                            ),

                          ),
                        ),
                        const SizedBox(width: Dimensions.paddingSizeDefault),

                        GestureDetector(
                          onTap: (){
                            if(_pinCodeFieldController.text.length < 4) {
                              showCustomSnackBarHelper('please_input_4_digit_pin'.tr);
                            }else {
                              Get.find<TransactionMoneyController>().pinVerify(
                                pin: _pinCodeFieldController.text,
                              ).then((isCorrect) {
                                if(isCorrect) {
                                  if(transactionType == TransactionType.withdrawRequest) {
                                    _placeWithdrawRequest();

                                  } else if(Get.find<SplashController>().configModel!.twoFactor!
                                      && Get.find<ProfileController>().profileModel!.twoFactor!
                                  ){
                                    Get.find<AuthController>().checkOtp().then((value) {
                                      Get.defaultDialog(
                                        barrierDismissible: false,
                                        title: 'otp_verification'.tr,
                                        content: Column(
                                          children: [
                                            CustomPinCodeFieldWidget(
                                              onCompleted: (pin) => Get.find<AuthController>().verifyOtp(pin).
                                              then((value) {
                                                if(value.isOk){

                                                  showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    context: Get.context!,
                                                    isDismissible: false,
                                                    enableDrag: false,
                                                    shape: const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.vertical(top: Radius.circular(Dimensions.radiusSizeLarge)),
                                                    ),

                                                    builder: (context) => BottomSheetSliderWidget(
                                                      amount: inputBalance.toString(),
                                                      contactModel: contactModel,
                                                      pinCode: Get.find<BottomSliderController>().pin,
                                                      transactionType: transactionType,
                                                    ),
                                                  );
                                                }
                                              }),
                                            ),

                                            const DemoOtpHintWidget(),

                                            GetBuilder<AuthController>(
                                              builder: (verifyController) =>
                                              verifyController.isVerifying ?
                                              CircularProgressIndicator(
                                                color: Theme.of(context).textTheme.titleLarge!.color,
                                              ) : const SizedBox.shrink(),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                                  }else{

                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: Get.context!,
                                      isDismissible: false,
                                      enableDrag: false,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(Dimensions.radiusSizeLarge)),
                                      ),

                                      builder: (context) => BottomSheetSliderWidget(
                                        amount: inputBalance.toString(),
                                        contactModel: contactModel,
                                        pinCode: Get.find<BottomSliderController>().pin,
                                        transactionType: transactionType,
                                      ),
                                    );
                                  }
                                }
                                _pinCodeFieldController.clear();


                              });
                            }

                          },

                          child: GetBuilder<AuthController>(
                            builder: (otpCheckController) {
                              return GetBuilder<TransactionMoneyController>(
                                builder: (pinVerify) {
                                  return pinVerify.isLoading|| otpCheckController.isLoading ?
                                  SizedBox(
                                    width: Dimensions.radiusSizeOverLarge,
                                    height:  Dimensions.radiusSizeOverLarge,
                                    child: Center(
                                      child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
                                    ),
                                  ) :
                                  Container(
                                    width: Dimensions.radiusSizeOverLarge,
                                    height:  Dimensions.radiusSizeOverLarge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Theme.of(context).secondaryHeaderColor,
                                    ),
                                    child: Icon(Icons.arrow_forward, color: ColorResources.blackColor),
                                  );
                                },
                              );
                            }
                          ),
                        )

                      ],
                    )

                  ],
                ),
              )

            ],
          ),
        ),
      );
  }

  void _placeWithdrawRequest() {
    Map<String, String> withdrawalMethodField = {};

    for (var method in withdrawMethod!.methodFields) {
      withdrawalMethodField.addAll({'${method.inputName}' : '${method.inputValue}'});
    }

    List<Map<String, String>> withdrawalMethodFieldList = [];
    withdrawalMethodFieldList.add(withdrawalMethodField);

    Map<String, String?> withdrawRequestBody = {};
    withdrawRequestBody = {
      'pin' : Get.find<BottomSliderController>().pin,
      'amount' : '$inputBalance',
      'withdrawal_method_id' : '${withdrawMethod!.id}',
      'withdrawal_method_fields' : base64Url.encode(utf8.encode(jsonEncode(withdrawalMethodFieldList))),
    };

    Get.find<TransactionMoneyController>().withDrawRequest(placeBody: withdrawRequestBody);
  }

  Widget _methodFieldView({required String type,required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(type, style: rubikLight.copyWith(fontSize: Dimensions.fontSizeDefault),),

        Text(value),
      ],
    );
  }
}





