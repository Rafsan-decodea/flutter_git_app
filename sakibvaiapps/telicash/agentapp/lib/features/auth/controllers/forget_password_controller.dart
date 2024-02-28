import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassController extends GetxController implements GetxService{
  String? _countryCode;
  String? get countryCode => _countryCode;
  String? _initNumber ;
  String? get initNumber => _initNumber;
  String? _otp;
  setOtp(String otp){
    _otp = otp;
  }

  setInitialCode(String? code){
    _countryCode = code;
    update();
  }


  setCountryCode(String code){
    _countryCode = code;
    update();
  }



  resetPassword(TextEditingController newPassController, TextEditingController confirmPassController, String? phoneNumber){
    if(newPassController.text.isEmpty || confirmPassController.text.isEmpty){
      showCustomSnackBarHelper('please_enter_your_valid_pin'.tr, isError: true);
    }
    else if(newPassController.text.length < 4){
      showCustomSnackBarHelper('password_length'.tr, isError: true);
    }
    else if(newPassController.text == confirmPassController.text){
      // write code
      String? number = phoneNumber;

      Get.find<AuthController>().resetPassword(number, _otp, newPassController.text, confirmPassController.text);
    }
    else{
      showCustomSnackBarHelper('pin_not_matched'.tr, isError: true);
    }
  }


  sendForOtpResponse({required String phoneNumber}) async {
    String number = phoneNumber;
    if (number.isEmpty) {
      showCustomSnackBarHelper('empty_message'.tr,
          isError: true);
    }
    else if(number.contains(RegExp(r'[A-Z]'))){
      showCustomSnackBarHelper(
          'contain_character'.tr,
          isError: true);
    }
    else if(number.contains(RegExp(r'[a-z]'))){
      showCustomSnackBarHelper(
          'contain_character'.tr,
          isError: true);
    }
    else if(number.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      showCustomSnackBarHelper(
          'contain_spatial_character'.tr,

          isError: true);
    }
    else{
      String phoneNumber = _countryCode! + number;
      Get.find<AuthController>().otpForForgetPass(phoneNumber);
    }
  }

}