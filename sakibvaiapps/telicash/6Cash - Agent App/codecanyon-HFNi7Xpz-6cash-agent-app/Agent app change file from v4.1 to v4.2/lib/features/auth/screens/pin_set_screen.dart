import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/camera_verification/controllers/camera_screen_controller.dart';
import 'package:six_cash/features/auth/controllers/registration_contoller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/auth/controllers/verification_controller.dart';
import 'package:six_cash/data/api/api_client.dart';
import 'package:six_cash/features/auth/domain/models/signup_body_mode.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/common/widgets/custom_country_code_picker_widget.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/features/auth/widgets/appbar_header_widget.dart';
import 'package:six_cash/features/auth/widgets/pin_field_widget.dart';

class PinSetScreen extends StatefulWidget {
  final SignUpBodyModel signUpBody;
   const PinSetScreen({Key? key, required this.signUpBody}) : super(key: key);

  @override
  State<PinSetScreen> createState() => _PinSetScreenState();
}

class _PinSetScreenState extends State<PinSetScreen> {
  final TextEditingController pinController = TextEditingController();
  final TextEditingController confirmPinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          Expanded(flex: 6, child: Container(color: Theme.of(context).primaryColor)),

          Expanded(flex: 5, child: Container(color: Theme.of(context).cardColor)),
        ]),

        const Positioned(
          top: Dimensions.paddingSizeOverLarge,
          left: 0, right: 0,
          child: AppbarHeaderWidget(),
        ),

        Positioned(top: context.height * 0.18, left: 0, right: 0, bottom: 0, child: PinFieldWidget(
          pinController: pinController,
          confirmPinController: confirmPinController,
        )),
      ]),

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Dimensions.paddingSizeLarge,
          horizontal: Dimensions.paddingSizeSmall,
        ),
        child: GetBuilder<RegistrationController>(builder: (registrationController){
            return FloatingActionButton(
              onPressed: () {
                String password =  pinController.text.trim();
                String confirmPassword =  confirmPinController.text.trim();

                if(password.isEmpty  || confirmPassword.isEmpty){
                  showCustomSnackBarHelper('enter_your_pin'.tr);
                }else if(password.length < 4 ){
                  showCustomSnackBarHelper('pin_should_be_4_digit'.tr);
                }else if(password != confirmPassword){
                  showCustomSnackBarHelper('pin_not_matched'.tr);
                }else{
                  String gender =  Get.find<ProfileController>().gender;
                  String countryCode = CustomCountryCodePikerWidget.getCountryCode(registrationController.phoneNumber) ?? '';
                  String phoneNumber = registrationController.phoneNumber?.replaceAll(countryCode, '') ?? '';
                  File? image =  Get.find<CameraScreenController>().getImage;
                  String? otp =  Get.find<VerificationController>().otp;

                  SignUpBodyModel signUpBody = SignUpBodyModel(
                    fName: widget.signUpBody.fName,
                    lName: widget.signUpBody.lName,
                    gender: gender,
                    occupation: widget.signUpBody.occupation,
                    email: widget.signUpBody.email,
                    phone: phoneNumber,
                    otp: otp,
                    password: password,
                    dialCountryCode: countryCode,
                  );

                  MultipartBody multipartBody = MultipartBody('image',image );

                  registrationController.registration(signUpBody,[multipartBody]);
                }

              },
              elevation: 0,
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              child: !registrationController.isLoading ? SizedBox(
                child:  Icon(Icons.arrow_forward,
                  color: Theme.of(context).textTheme.bodyLarge!.color,size: 28,),
              ) : Center(child: SizedBox(
                height: 20.33,
                width: 20.33,
                child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
              )),
            );
          }
        ) ,
      ),
    );
  }
}
