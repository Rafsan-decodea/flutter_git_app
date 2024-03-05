import 'package:six_cash/common/widgets/custom_loader_widget.dart';
import 'package:six_cash/features/transaction_money/controllers/bootom_slider_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/profile/controllers/screen_shot_widget_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/transaction_controller.dart';
import 'package:six_cash/common/models/contact_model.dart';
import 'package:six_cash/features/transaction_money/widgets/share_statement_widget.dart';
import 'package:six_cash/helper/transaction_type.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

import 'avator_widget.dart';

class BottomSheetSliderWidget extends StatefulWidget {
  final String amount;
  final String? pinCode;
  final String? transactionType;
  final ContactModel? contactModel;

  const BottomSheetSliderWidget({
    Key? key, required this.amount,
    this.pinCode, this.transactionType, this.contactModel,
  }) : super(key: key);

  @override
  State<BottomSheetSliderWidget> createState() => _BottomSheetSliderWidgetState();
}

class _BottomSheetSliderWidgetState extends State<BottomSheetSliderWidget> {
  String? transactionId ;

  @override
  void initState() {
    Get.find<TransactionMoneyController>().changeTrueFalse();
    super.initState();
  }

  void onPop() async {
    Future.delayed(const Duration(milliseconds:0)).then((value) {
      Get.offAllNamed(RouteHelper.getNavBarRoute());

    });
  }

  @override
  Widget build(BuildContext context) {
    final configModel = Get.find<SplashController>().configModel!;

    String type = widget.transactionType == TransactionType.sendMoney ? 'send_money'.tr
        : widget.transactionType == TransactionType.withdrawRequest ? 'admin_cash_out'.tr
        : widget.transactionType == TransactionType.addMoney ? 'add_money'.tr
        :'request_money'.tr;

    double cashOutCharge = double.parse(widget.amount.toString()) *
        (double.parse(configModel.sendMoneyChargeFlat.toString())/100);

    String customerImage = '${configModel.baseUrls!.customerImageUrl}/${widget.contactModel!.avatarImage}';
    String companyImage = '${configModel.baseUrls!.companyImageUrl}/${configModel.companyLogo}';

    return PopScope(
      canPop: false,
      onPopInvoked:(_)=> onPop(),
      child: Container(
        decoration: BoxDecoration(
          color: ColorResources.getBackgroundColor(),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radiusSizeLarge),
            topRight:Radius.circular(Dimensions.radiusSizeLarge),
          ),
        ),

        child: GetBuilder<TransactionMoneyController>(
          builder: (transactionMoneyController) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeLarge),
                      decoration: BoxDecoration(
                        color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.04),
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(Dimensions.radiusSizeLarge) ),
                      ),
                      child: Text('${'confirm_to'.tr} $type', style: rubikSemiBold.copyWith(),),
                    ),
                    !transactionMoneyController.isLoading?
                    Visibility(
                      visible: !transactionMoneyController.isNextBottomSheet,
                      child: Positioned(
                        top: Dimensions.paddingSizeSmall,
                        right: 8.0,
                        child: GestureDetector(onTap: ()=> Get.back(),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(shape: BoxShape.circle, color: ColorResources.getGreyBaseGray6()),
                                child: const Icon(Icons.clear,size: Dimensions.paddingSizeDefault,))),
                      ),
                    ) : const SizedBox(),
                  ],
                ),

                transactionMoneyController.isNextBottomSheet ?
                Column(
                  children: [
                    transactionMoneyController.isNextBottomSheet ? Lottie.asset(
                      Images.successAnimation,
                      width: 120,
                      fit: BoxFit.contain, alignment: Alignment.center,
                    ) : Padding(
                      padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
                      child: Lottie.asset(
                        Images.failedAnimation,
                        width: 80,
                        fit: BoxFit.contain,alignment: Alignment.center,
                      ),
                    ),
                  ],
                ): AvatarWidget(
                  image: widget.transactionType != TransactionType.withdrawRequest ? customerImage : companyImage,
                ),

                Container(
                  color: ColorResources.getBackgroundColor(),
                  child: Column(
                    children: [

                      transactionMoneyController.isNextBottomSheet ?
                      Text(widget.transactionType == TransactionType.sendMoney
                          ? 'send_money_successful'.tr : widget.transactionType == TransactionType.requestMoney
                          ?'request_send_successful'.tr : 'cash_out_successful'.tr,
                          style: rubikMedium.copyWith(
                            fontSize: Dimensions.fontSizeLarge,
                            color: Theme.of(context).textTheme.titleLarge!.color,
                          ),
                      ) : const SizedBox(),

                      const SizedBox(height: Dimensions.paddingSizeExtraExtraLarge),

                      Text(
                        PriceConverter.balanceWithSymbol(balance: widget.amount),
                        style: rubikMedium.copyWith(fontSize: 34.0),
                      ),

                     if(widget.transactionType != TransactionType.requestMoney) GetBuilder<ProfileController>(
                        builder: (profileController) {
                          return profileController.profileModel == null ? const SizedBox() : Text(
                            '${'new_balance'.tr} ${transactionMoneyController.isNextBottomSheet
                                ? PriceConverter.balanceWithSymbol(balance: '${profileController.profileModel?.balance}')
                                : PriceConverter.newBalanceWithDebit(inputBalance: double.parse(widget.amount), charge: 0)}',
                            style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeDefault),
                          );
                        }
                      ),
                      const SizedBox(height: Dimensions.paddingSizeDefault),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                        child: Divider(height: Dimensions.dividerSizeSmall),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: Dimensions.paddingSizeDefault,
                          horizontal: Dimensions.paddingSizeDefault,
                        ),

                        child: Column(
                          children: [

                            widget.transactionType == TransactionType.withdrawRequest ?
                            Text('cash_out_from_admin'.tr) :
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.contactModel!.name == null ?'(unknown )' :'(${widget.contactModel!.name}) ',
                                  style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeDefault),
                                  maxLines: 1,overflow: TextOverflow.ellipsis,
                                ),

                                Text(
                                  widget.contactModel!.phoneNumber!,
                                  style: rubikSemiBold.copyWith(fontSize: Dimensions.fontSizeDefault),
                                ),
                              ],
                            ),

                            const SizedBox(height: Dimensions.paddingSizeExtraSmall),

                            transactionMoneyController.isNextBottomSheet ?
                            transactionId != null? Text( '${'trx_id'.tr}: $transactionId', style: rubikLight.copyWith(fontSize: Dimensions.fontSizeDefault)): const SizedBox()
                            : const SizedBox(),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),


                transactionMoneyController.isNextBottomSheet?
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault / 1.7),
                      child: Divider(height: Dimensions.dividerSizeSmall),
                    ),
                    const SizedBox(height: Dimensions.paddingSizeDefault),

                    GetBuilder<ScreenShootWidgetController>(
                      builder: (screenshotController) {
                        return screenshotController.isLoading ? SizedBox(
                          height: 50, child: CustomLoaderWidget(color: Theme.of(context).primaryColor),
                        ) : CustomInkWellWidget(
                          onTap:()=> screenshotController.shareStatementScreenshot(child: ShareStatementWidget(
                            amount: widget.amount, transactionType: widget.transactionType, contactModel: widget.contactModel,
                            charge: widget.transactionType == TransactionType.sendMoney ? '0' :  cashOutCharge.toString(),
                            trxId: transactionId,
                          )),
                          child: Text('share_statement'.tr, style: rubikMedium.copyWith(fontSize: Dimensions.fontSizeLarge)),
                        );
                      }
                    ),

                    const SizedBox(height: Dimensions.paddingSizeDefault),
                  ],
                ) : const SizedBox(),



                transactionMoneyController.isNextBottomSheet ?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraExtraLarge),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.circular(Dimensions.radiusSizeSmall),
                    ),
                    child: CustomInkWellWidget(
                      onTap: (){
                        Get.find<BottomSliderController>().goBackButton();
                      },
                      radius: Dimensions.radiusSizeSmall,
                      highlightColor: Theme.of(context).textTheme.titleLarge!.color!.withOpacity(0.1),
                      child: SizedBox(
                        height: 50.0,
                        child: Center(child: Text(
                          'back_to_home'.tr,
                          style: rubikMedium.copyWith(fontSize: Dimensions.fontSizeLarge, color: Colors.white),
                        )),

                      ),
                    ),
                  ),
                ):
                transactionMoneyController.isLoading ? Center(
                  child: CircularProgressIndicator(color: Theme.of(context).textTheme.titleLarge!.color),
                ) :
                ConfirmationSlider(
                  height: 60.0,
                  backgroundColor: ColorResources.getGreyBaseGray6(),
                  text: 'swipe_to_confirm'.tr,
                  textStyle: rubikRegular.copyWith(fontSize: Dimensions.paddingSizeLarge),
                  shadow: const BoxShadow(),
                  sliderButtonContent: Container(
                    padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(Images.slideRightIcon, color: Colors.white),

                  ),
                  onConfirmation: ()async{
                    if( widget.transactionType == TransactionType.sendMoney){
                      transactionMoneyController.cashIn(
                        contactModel: widget.contactModel!,
                        amount: double.parse(widget.amount),
                        pinCode: widget.pinCode,
                      ).then((value) {
                        transactionId = value.body['transaction_id'];
                      });
                    }


                  },

                ),

                const SizedBox(height: 40.0),

              ],
            );
          }
        ),
      ),
    );
  }
}