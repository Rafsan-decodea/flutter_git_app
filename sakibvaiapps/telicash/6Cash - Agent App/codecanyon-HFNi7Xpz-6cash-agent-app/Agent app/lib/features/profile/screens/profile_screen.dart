import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:six_cash/common/enums/request_type_enum.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/profile/domain/models/profile_model.dart' as profile;
import 'package:six_cash/features/profile/domain/models/profile_model.dart';
import 'package:six_cash/features/profile/widgets/two_factor_shimmer_widget.dart';
import 'package:six_cash/features/transaction_limit/domain/models/transaction_table_model.dart';
import 'package:six_cash/helper/dialog_helper.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/util/app_constants.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_dialog_widget.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';
import 'package:six_cash/features/profile/widgets/menu_item_widget.dart' as widget;
import 'package:six_cash/features/profile/widgets/profile_holder_widget.dart';
import 'package:six_cash/features/profile/widgets/status_menu_widget.dart';
import 'package:six_cash/features/profile/widgets/user_info_widget.dart';
import 'package:six_cash/features/requested_money/screens/requested_list_screen.dart';
import 'package:six_cash/features/transaction_limit/screens/transaction_limit_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final splashController = Get.find<SplashController>();
    List<TransactionTableModel> transactionTableModelList = [];
    profile.ProfileModel? userInfo = Get.find<ProfileController>().profileModel;


    if(userInfo != null){
      transactionTableModelList.addAll([
        if(splashController.configModel!.systemFeature!.sendMoneyStatus! && splashController.configModel!.customerSendMoneyLimit!.status )
          TransactionTableModel(
            'send_money'.tr, Images.sendMoneyImage, splashController.configModel!.customerSendMoneyLimit!,
            Transaction(
              userInfo.transactionLimits!.dailySendMoneyCount ?? 0,
              userInfo.transactionLimits!.monthlySendMoneyCount ?? 0,
              userInfo.transactionLimits!.dailySendMoneyAmount ?? 0,
              userInfo.transactionLimits!.monthlySendMoneyAmount ?? 0,
            ),
          ),


        if(splashController.configModel!.systemFeature!.sendMoneyRequestStatus! && splashController.configModel!.customerRequestMoneyLimit!.status)
          TransactionTableModel('send_money_request'.tr, Images.requestMoneyLogo, splashController.configModel!.customerRequestMoneyLimit!,
            Transaction(
              userInfo.transactionLimits!.dailySendMoneyRequestCount ?? 0,
              userInfo.transactionLimits!.monthlySendMoneyRequestCount ?? 0,
              userInfo.transactionLimits!.dailySendMoneyRequestAmount ?? 0,
              userInfo.transactionLimits!.monthlySendMoneyRequestAmount ?? 0,
            ),),

        if(splashController.configModel!.systemFeature!.addMoneyStatus! && splashController.configModel!.customerAddMoneyLimit!.status )
          TransactionTableModel(
            'add_money'.tr, Images.addMoneyLogo3, splashController.configModel!.customerAddMoneyLimit!,
            Transaction(
              userInfo.transactionLimits!.dailyAddMoneyCount ?? 0,
              userInfo.transactionLimits!.monthlyAddMoneyCount ?? 0,
              userInfo.transactionLimits!.dailyAddMoneyAmount ?? 0,
              userInfo.transactionLimits!.monthlyAddMoneyAmount ?? 0,
            ),
          ),

        if(splashController.configModel!.systemFeature!.withdrawRequestStatus! && splashController.configModel!.customerWithdrawLimit!.status)
          TransactionTableModel(
            'withdraw'.tr, Images.withDraw, splashController.configModel!.customerWithdrawLimit!,
            Transaction(
              userInfo.transactionLimits!.dailyWithdrawRequestCount ?? 0,
              userInfo.transactionLimits!.monthlyWithdrawRequestCount ?? 0,
              userInfo.transactionLimits!.dailyWithdrawRequestAmount ?? 0,
              userInfo.transactionLimits!.monthlyWithdrawRequestAmount ?? 0,
            ),
          ),
      ]);
    }

    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: CustomAppbarWidget(title: 'profile'.tr, onlyTitle: true),
        body: GetBuilder<AuthController>(builder: (authController){
          return ModalProgressHUD(
            inAsyncCall: authController.isLoading,
            progressIndicator: CircularProgressIndicator(color: Theme.of(context).primaryColor),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const UserInfoWidget(),

                  ProfileHeaderWidget(title: 'setting'.tr),

                  Column(children: [
                    CustomInkWellWidget(
                      child: widget.MenuItemWidget(
                        image: Images.editProfile,
                        title: 'edit_profile'.tr,
                      ),
                      onTap:()=>Get.toNamed(RouteHelper.getEditProfileRoute()),
                    ),

                    CustomInkWellWidget(
                      child: widget.MenuItemWidget(image: Images.withDraw,title: 'withdraw_history'.tr),
                      onTap: () => Get.to(()=> const RequestedListScreen(requestType: RequestType.withdraw)),
                    ),

                    CustomInkWellWidget(
                      child: widget.MenuItemWidget(
                        image: Images.sendRequestLogo,
                        title: 'send_requests'.tr,
                      ),
                      onTap: () => Get.to(()=> const RequestedListScreen(requestType: RequestType.sendRequest)),
                    ),

                   if(transactionTableModelList.isNotEmpty) CustomInkWellWidget(
                      child: widget.MenuItemWidget(
                        image: Images.transactionLimit,
                        title: 'transaction_limit'.tr,
                      ),
                      onTap: () => Get.to(()=> TransactionLimitScreen(
                        transactionTableModelList: transactionTableModelList,
                      )),
                    ),

                    CustomInkWellWidget(
                      child: widget.MenuItemWidget(
                        image: Images.pinChangeLogo,
                        title: 'change_pin'.tr,
                      ),
                      onTap:()=> Get.toNamed(RouteHelper.getChangePinRoute()),
                    ),

                    if(authController.isBiometricSupported) StatusMenuWidget(
                      title: 'biometric_login'.tr, leading: SizedBox(width: 25,child: Image.asset(Images.fingerprint)), isAuth: true,
                    ),

                    if(splashController.configModel?.selfDelete == true)
                    CustomInkWellWidget(
                      child: widget.MenuItemWidget(
                        iconData: Icons.delete, image: null, title: 'delete_account'.tr,
                      ),
                      onTap: () {
                        DialogHelper.showAnimatedDialog(context,
                            CustomDialogWidget(
                              icon: Icons.question_mark_sharp,
                              title: 'are_you_sure_to_delete_account'.tr,
                              description: 'it_will_remove_your_all_information'.tr,
                              onTapFalseText: 'no'.tr,
                              onTapTrueText: 'yes'.tr,
                              isFailed: true,
                              onTapFalse: () => Get.back(),
                              onTapTrue: () => Get.find<AuthController>().removeUser(),
                              bigTitle: true,
                            ),
                            dismissible: false,
                            isFlip: true);
                      },
                    ),

                   if(AppConstants.languages.length > 1) CustomInkWellWidget(
                      child: widget.MenuItemWidget(
                        image: Images.languageLogo,
                        title: 'change_language'.tr,
                      ),
                      onTap:()=> Get.toNamed(RouteHelper.getChoseLanguageRoute()),
                    ),

                    if(Get.find<SplashController>().configModel!.twoFactor!)
                      GetBuilder<ProfileController>(builder: (profileController){
                        return profileController.isLoading ? const TwoFactorShimmerWidget() :
                        StatusMenuWidget(
                          title: 'two_factor_authentication'.tr,
                          leading: Image.asset(Images.twoFactorAuthentication,width: 28.0),
                        );
                      }),

                    GetBuilder<ProfileController>(builder: (profileController){
                      return Container(
                        padding: const EdgeInsets.only(
                          top: Dimensions.paddingSizeSmall,
                          bottom: Dimensions.paddingSizeSmall,
                        ),
                        child: Row( children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                            child: Image.asset(
                              Images.changeTheme,
                              width: Dimensions.fontSizeOverOverLarge,
                            ),
                          ),

                          Text(
                            'dark_mode'.tr,style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeLarge),
                          ),
                          const Spacer(),


                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap:()=> profileController.onChangeTheme(),
                            child: Transform.scale(scale: 1, child: Switch(
                              onChanged: (_){
                                profileController.onChangeTheme();
                              },
                              value: profileController.isSwitched,
                              activeColor: Theme.of(context).primaryColor,
                              activeTrackColor: Colors.white,
                              inactiveThumbColor: Theme.of(context).primaryColor,
                              inactiveTrackColor: Colors.black26,
                            )),
                          ),
                          const SizedBox(width: Dimensions.paddingSizeSmall),

                        ],
                        ),
                      );
                    },)

                  ]),

                  ProfileHeaderWidget(title: '6cash_support'.tr),

                  Column(children: [
                    if(((splashController.configModel!.companyEmail != null) || (splashController.configModel!.companyPhone != null)))
                      CustomInkWellWidget(
                        child: widget.MenuItemWidget(image: Images.supportLogo,title: '24_support'.tr),
                        onTap: () => Get.toNamed(RouteHelper.getSupportRoute()),
                      ),

                    CustomInkWellWidget(
                      child: widget.MenuItemWidget(image: Images.questionLogo, title: 'faq'.tr),
                      onTap:()=> Get.toNamed(RouteHelper.faq),
                    ),
                  ],),

                  ProfileHeaderWidget(title: 'policies'.tr),

                  Column(children: [
                    CustomInkWellWidget(child: widget.MenuItemWidget(image: Images.aboutUs,title: 'about_us'.tr),onTap:()=> Get.toNamed(RouteHelper.aboutUs)),
                    CustomInkWellWidget(child: widget.MenuItemWidget(image: Images.terms,title: 'terms'.tr),onTap:()=> Get.toNamed(RouteHelper.terms)),
                    CustomInkWellWidget(child: widget.MenuItemWidget(image: Images.privacy, title: 'privacy_policy'.tr),onTap:()=> Get.toNamed(RouteHelper.privacy))
                  ],
                  ),
                  ProfileHeaderWidget(title: 'account'.tr),

                  Column( children: [
                    CustomInkWellWidget(child: widget.MenuItemWidget(image: Images.logOut,title: 'logout'.tr), onTap:() => Get.find<ProfileController>().logOut()),
                    const SizedBox(height: Dimensions.paddingSizeLarge),
                  ],
                  )
                ],
              ),
            ),
          );
        },)

    );
  }
}





