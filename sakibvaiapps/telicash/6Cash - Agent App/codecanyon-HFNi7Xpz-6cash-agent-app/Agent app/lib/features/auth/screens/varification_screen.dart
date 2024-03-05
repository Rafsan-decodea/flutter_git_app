import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/auth/controllers/registration_contoller.dart';
import 'package:six_cash/features/auth/controllers/forget_password_controller.dart';
import 'package:six_cash/features/auth/controllers/verification_controller.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_pin_code_field_widget.dart';
import 'package:six_cash/common/widgets/demo_otp_hint_widget.dart';
import 'package:six_cash/features/auth/widgets/information_widget.dart';
import 'package:six_cash/features/auth/widgets/timer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationScreen extends StatefulWidget {
  final String? phoneNumber;
  const VerificationScreen({Key? key, this.phoneNumber}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  @override
  void initState() {
    Get.find<VerificationController>().startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isForgetPassword = widget.phoneNumber != null;

    return Scaffold(
      appBar: CustomAppbarWidget(title: 'phone_verification'.tr, onTap:() {
        Get.find<VerificationController>().cancelTimer();
        Get.back();
      }),
      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: Dimensions.paddingSizeExtraLarge),
                InformationWidget(phoneNumber: widget.phoneNumber),
                const SizedBox(height: Dimensions.paddingSizeOverLarge),

                GetBuilder<VerificationController>(builder: (verificationController){
                  return CustomPinCodeFieldWidget(
                    padding: Dimensions.paddingSizeOverLarge,
                    onCompleted: (pin){
                      verificationController.setOtp = pin;
                      Get.find<ForgetPassController>().setOtp(pin);

                      String? phoneNumber = isForgetPassword ? widget.phoneNumber : Get.find<RegistrationController>().phoneNumber!;

                      if(isForgetPassword){
                        Get.find<AuthController>().verificationForForgetPass(phoneNumber, pin);
                      }else{
                        Get.find<AuthController>().phoneVerify(phoneNumber!, pin);
                      }
                    },
                  );
                }),

                const DemoOtpHintWidget(),
                const SizedBox(height: Dimensions.paddingSizeExtraLarge,),

                TimerWidget(
                  isForgetPassword: isForgetPassword,
                  phoneNumber: widget.phoneNumber
                      ?? Get.find<RegistrationController>().phoneNumber!,
                ),
              ],
            ),
          )),

          GetBuilder<AuthController>(builder: (controller)=>SizedBox(
            height: 100,
            child: controller.isLoading ?
            Center(
              child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
            ): const SizedBox(),
          ))

        ],
      ),

    );
  }
}
