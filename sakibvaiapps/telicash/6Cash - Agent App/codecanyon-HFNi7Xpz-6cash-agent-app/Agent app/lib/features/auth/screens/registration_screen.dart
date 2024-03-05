import 'package:phone_number/phone_number.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/auth/controllers/registration_contoller.dart';
import 'package:six_cash/util/app_constants.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_country_code_picker_widget.dart';
import 'package:six_cash/common/widgets/custom_logo_widget.dart';
import 'package:six_cash/common/widgets/custom_large_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);


  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController numberFieldController = TextEditingController();

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final RegistrationController createAccountController = Get.find<RegistrationController>();

    return Scaffold(
      appBar: CustomAppbarWidget(title: 'registration'.tr),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(child: SingleChildScrollView(child: Column(
          children: [
            const SizedBox(height: Dimensions.paddingSizeExtraExtraLarge),
            const CustomLogoWidget(height: 70.0, width: 70.0),
            const SizedBox(height: Dimensions.paddingSizeExtraLarge),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge),
              child: Text(
                '${'create'.tr} ${AppConstants.appName} ${'account_with_your'.tr}',
                textAlign: TextAlign.center,
                style: rubikRegular.copyWith(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                  fontSize: Dimensions.fontSizeLarge,
                ),
              ),
            ),
            const SizedBox(height: Dimensions.paddingSizeExtraLarge,),

            GetBuilder<RegistrationController>(
              builder: (registrationController)=> Container(
                height: 52,
                margin: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                child: Center(child: TextField(
                  controller: numberFieldController,
                  keyboardType: TextInputType.phone,
                  cursorColor: Theme.of(context).textTheme.titleLarge!.color,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 5),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.radiusSizeSmall),
                      borderSide: BorderSide(color: Theme.of(context).textTheme.titleLarge!.color!, width: 2,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.radiusSizeSmall),
                      borderSide: BorderSide(color: ColorResources.textFieldBorderColor, width: 1,
                      ),
                    ),
                    prefixIcon: CustomCountryCodePikerWidget(
                      initSelect: createAccountController.countryCode,
                      onChanged: (countryCode) => createAccountController.setCountryCode(countryCode.dialCode!),
                    ),
                  ),
                )),
              ),
            ),
          ],
        ))),

        GetBuilder<AuthController>(builder: (controller)=> SizedBox(
          height: 110,
          child: !controller.isLoading ? CustomLargeButtonWidget(
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            text: 'verify_number'.tr,
            onTap: () async {
              String phoneNumber = '${createAccountController.countryCode}${numberFieldController.text}';
              try{
                await PhoneNumberUtil().parse(phoneNumber).then((value) {
                  createAccountController.sendOtpResponse(number: phoneNumber);
                });

              }catch(e){
                showCustomSnackBarHelper('please_input_your_valid_number'.tr, isError: true);
                numberFieldController.clear();
              }
            },
          ) : Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor)),
        ),),
      ]),
    );
  }
}
