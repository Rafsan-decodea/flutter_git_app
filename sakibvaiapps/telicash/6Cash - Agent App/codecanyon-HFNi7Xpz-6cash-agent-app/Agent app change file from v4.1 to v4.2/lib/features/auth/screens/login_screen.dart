import 'dart:async';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fgbg/flutter_fgbg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:six_cash/common/enums/hero_tag_enum.dart';
import 'package:six_cash/common/widgets/qr_code_popup_widget.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/home/controllers/menu_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/common/models/user_data_model.dart';
import 'package:six_cash/features/home/domain/enums/navbar_type_enum.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_country_code_picker_widget.dart';
import 'package:six_cash/common/widgets/custom_password_field_widget.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/features/auth/widgets/appbar_header_widget.dart';
import 'package:six_cash/features/auth/screens/registration_screen.dart';
import 'package:six_cash/helper/tween_helper.dart';
import 'package:six_cash/common/widgets/hero_dialogue_route_widget.dart';


class LoginScreen extends StatefulWidget {
  final String? phoneNumber, countryCode;
  const LoginScreen({Key? key, this.phoneNumber, this.countryCode}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>  {
  TextEditingController phoneController = TextEditingController();
  TextEditingController  passwordController = TextEditingController();
  FocusNode phoneFocus = FocusNode();
  FocusNode passFocus = FocusNode();
  String? _countryCode ;
  UserDataModel? userData;
  StreamSubscription<FGBGType>? subscription;



  @override
  void initState() {
    super.initState();

    _initLoading();

  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.find<SplashController>();

    return Scaffold(
      body: GetBuilder<AuthController>(builder: (authController) => AbsorbPointer(
        absorbing: authController.isLoading,
        child: Stack(children: [
          Column(children: [
            Expanded(flex: 5, child: Container(color: Theme.of(context).primaryColor)),

            Expanded(flex: 5, child: Container(color: Theme.of(context).cardColor))
          ]),

          const Positioned(
            top: Dimensions.paddingSizeOverLarge,
            left: 0, right: 0,
            child: AppbarHeaderWidget(),
          ),

          Positioned(top: context.height * 0.18, left: 0, right: 0, bottom: 0, child: Container(
            padding: const EdgeInsets.only(
              left: Dimensions.paddingSizeExtraExtraLarge,
              right: Dimensions.paddingSizeLarge,
              top: Dimensions.paddingSizeExtraExtraLarge,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radiusSizeExtraExtraLarge),
                topRight: Radius.circular(Dimensions.radiusSizeExtraExtraLarge),
              ),
            ),
            child: SingleChildScrollView(child: Column(children: [
              GetBuilder<AuthController>(builder: (controller){
                return Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'welcome_back'.tr, textAlign: TextAlign.center,
                        style: rubikLight.copyWith(
                          color: Theme.of(context).textTheme.titleLarge!.color,
                          fontSize: Dimensions.fontSizeLarge,
                        ),
                      ),

                      userData?.name != null ?
                      SizedBox(width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          userData!.name!,
                          textAlign: TextAlign.start, maxLines: 1, overflow: TextOverflow.ellipsis,
                          style: rubikMedium.copyWith(color: Theme.of(context).textTheme.titleLarge!.color, fontSize: Dimensions.fontSizeExtraOverLarge,),

                        ),
                      ) : Text('user'.tr,
                        overflow: TextOverflow.clip, textAlign: TextAlign.center,
                        style: rubikMedium.copyWith(color: Theme.of(context).textTheme.titleLarge!.color, fontSize: Dimensions.fontSizeExtraOverLarge,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),

                  SizedBox(height: 50, width: 50, child: Stack(children: [
                    GetBuilder<AuthController>(builder: (controller){
                      return userData?.qrCode != null ? InkWell(
                        onTap: ()=> Navigator.of(context).push(HeroDialogRouteWidget(builder: (_)=> QrCodePopupWidget(qrCode: userData!.qrCode!))),
                        child: Hero(
                          tag: HeroTag.qrCode,
                          createRectTween: (begin, end)=> TweenHelper(begin: begin,end: end),
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            color: Colors.white,
                            child: SvgPicture.string(userData!.qrCode!),
                          ),
                        )
                      ) : Container();

                    }),

                  ])),
                ]);
              }),
              const SizedBox(height: Dimensions.paddingSizeDefault),

              Row(children: [
                Text('account'.tr, style: rubikLight.copyWith(color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.9), fontSize: Dimensions.fontSizeLarge)),

                Expanded(child: TextField(
                  controller: phoneController,
                  focusNode: phoneFocus,
                  onSubmitted: (value) {
                    FocusScope.of(context).requestFocus(passFocus);
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(

                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(top: 14),
                    prefixIcon: CustomCountryCodePikerWidget(
                      initSelect: _countryCode,
                      onChanged: (code) => _countryCode = code.dialCode,
                    ),
                  ),
                )),
              ]),

              Divider(
                color: Theme.of(context).textTheme.titleLarge!.color!.withOpacity(0.4),
                height: 0.5,
              ),

              Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.paddingSizeExtraExtraLarge,
                    right: Dimensions.paddingSizeSmall),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('4_digit_pin'.tr, style: rubikMedium.copyWith(color: Theme.of(context).textTheme.titleLarge!.color, fontSize: Dimensions.fontSizeLarge,),),
                    const SizedBox(height: Dimensions.paddingSizeLarge,),
                    CustomPasswordFieldWidget(
                      hint: '＊＊＊＊',
                      controller: passwordController,
                      focusNode: passFocus,
                      isShowSuffixIcon: true,
                      isPassword: true,
                      isIcon: false,
                      textAlign: TextAlign.center,

                    ),


                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      InkWell(
                        onTap: ()=> Get.toNamed(RouteHelper.getForgetPassRoute(
                          countryCode: _countryCode,
                          phoneNumber: phoneController.text.trim(),
                        )),
                        child: Text('${'forget_pin'.tr}?', style: rubikRegular.copyWith(
                          color: Theme.of(context).colorScheme.error.withOpacity(0.7),
                          fontSize: Dimensions.fontSizeLarge,
                        )),
                      ),


                       splashController.configModel!.agentSelfRegistration ? TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: const Size(1, 40),
                        ),
                        onPressed: () async => await Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const RegistrationScreen()),
                        ),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: '${'join_as'.tr} ', style: rubikRegular.copyWith(color: Theme.of(context).disabledColor)),
                          TextSpan(text:'agent'.tr, style: rubikMedium.copyWith(color: Theme.of(context).textTheme.bodyLarge!.color)),
                        ])),
                      ) : const SizedBox(),
                    ]),

                  ],

                ),
              ),
              const SizedBox(height: Dimensions.paddingSizeExtraOverLarge),
            ])),
          )),
        ]),
      )),

      floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 10),
          child: GetBuilder<AuthController>(
            builder: (controller) {
              return FloatingActionButton(
                onPressed: () {

                  _login(context);
                },
                elevation: 0, backgroundColor: Theme.of(context).secondaryHeaderColor,
                child: controller.isLoading
                    ? SizedBox(height: Dimensions.paddingSizeLarge, width:  Dimensions.paddingSizeLarge, child: CircularProgressIndicator(color: Theme.of(context).textTheme.bodyLarge!.color,),)
                    : SizedBox(child: Icon(Icons.arrow_forward,color: ColorResources.blackColor,size: 28,),),
              );
            },
          )),
    );
  }

  Future<void> _initLoading() async {
    subscription = FGBGEvents.stream.listen((event) {
      if(event == FGBGType.foreground) {
        Get.find<AuthController>().authenticateWithBiometric(true,  null);
      }
    });

    userData = Get.find<AuthController>().getUserData();
    if(widget.phoneNumber != userData?.phone) {
      Get.find<AuthController>().removeUserData();
      userData = null;
    }

    Get.find<AuthController>().authenticateWithBiometric(true, null);
    _countryCode = CountryCode.fromCountryCode('${Get.find<SplashController>().configModel!.country}').dialCode;

    if(widget.phoneNumber != null && widget.phoneNumber != 'null' && widget.phoneNumber != '') {
      phoneController.text =  widget.phoneNumber!;
      _countryCode = widget.countryCode;
    }
  }


  Future<void> _login( BuildContext context) async {
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    Get.find<MenuItemController>().updateNavbarScreen(NavbarType.homeScreen, isUpdate: false);
    if (phone.isEmpty) {
      showCustomSnackBarHelper('empty_message'.tr,  isError: true);
    } else if (password.isEmpty) {
      showCustomSnackBarHelper('please_enter_your_valid_pin'.tr,  isError: true);
    } else if (password.length != 4) {
      showCustomSnackBarHelper('password_length'.tr, isError: true);
    } else {

      try{
        await  Get.find<AuthController>().setUserData(UserDataModel(phone: phone, countryCode: _countryCode));
        Get.find<AuthController>().login(code: _countryCode, phone: phone, password: password).then((value) async{
          if(value.statusCode == 200){
            await Get.find<ProfileController>().profileData(reload: true);
          }
        });
      }catch(e){
        showCustomSnackBarHelper('please_input_your_valid_number'.tr,isError: true);
      }
    }
  }


}
