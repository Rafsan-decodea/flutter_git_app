
import 'package:phone_number/phone_number.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/auth/controllers/forget_password_controller.dart';
import 'package:six_cash/helper/phone_cheker.dart';
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
class ForgetPinScreen extends StatefulWidget {
  final String? phoneNumber,countryCode;
  const ForgetPinScreen({Key? key, this.phoneNumber, this.countryCode}) : super(key: key);

  @override
  State<ForgetPinScreen> createState() => _ForgetPinScreenState();
}

class _ForgetPinScreenState extends State<ForgetPinScreen> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void initState() {
     super.initState();
     Get.find<ForgetPassController>().setInitialCode(widget.countryCode);
     phoneNumberController.text = widget.phoneNumber!;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(
        title: 'forget_pin'.tr,
      ),
      body: Column(
        children: [
          Expanded(
            // flex: 10,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: Dimensions.paddingSizeExtraExtraLarge,
                  ),
                  const CustomLogoWidget(
                    height: 70.0,
                    width: 70.0,
                  ),
                  const SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeExtraLarge),
                    child: Text(
                      'forget_pass_long_text'.tr,
                      style: rubikRegular.copyWith(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: Dimensions.fontSizeLarge,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                  Container(
                    height: 52,
                    margin: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: Center(
                      child: TextField(
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                        cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(bottom: 5),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                Dimensions.radiusSizeSmall),
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                Dimensions.radiusSizeSmall),
                            borderSide: BorderSide(
                              color: ColorResources.textFieldBorderColor,
                              width: 1,
                            ),
                          ),
                          prefixIcon: CustomCountryCodePikerWidget(
                            initSelect: Get.find<ForgetPassController>().countryCode,
                            onChanged: (countryCode)=> Get.find<ForgetPassController>().setCountryCode(countryCode.dialCode!),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          GetBuilder<AuthController>(builder: (controller){
            return SizedBox(
              height: 110,
              child: !controller.isLoading ? CustomLargeButtonWidget(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                text: 'Send_for_OTP'.tr,
                onTap: () async{
                  String phoneNumber = Get.find<ForgetPassController>().countryCode! + phoneNumberController.text;
                  PhoneNumber? number = await PhoneChecker.isNumberValid(phoneNumber);
                  if(number != null ){
                    Get.find<ForgetPassController>().sendForOtpResponse(phoneNumber: phoneNumberController.text);
                  }
                  else{
                    showCustomSnackBarHelper('please_input_your_valid_number'.tr,isError: true);
                  }
                },
              ) : Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor),),
            );
          }),
        ],
      ),
    );

  }

}
