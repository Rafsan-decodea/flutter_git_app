import 'dart:convert';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:phone_number/phone_number.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/camera_verification/controllers/camera_screen_controller.dart';
import 'package:six_cash/features/auth/controllers/verification_controller.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/common/models/response_model.dart';
import 'package:six_cash/common/models/user_data_model.dart';
import 'package:six_cash/features/auth/domain/reposotories/auth_repo.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';

import '../../../util/app_constants.dart';
import '../../transaction_money/controllers/bootom_slider_controller.dart';
import '../../splash/controllers/splash_controller.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;
  AuthController({required this.authRepo}) {
    _biometric = authRepo.isBiometricEnabled();
    checkBiometricSupport();
  }
    bool _isLoading = false;
    bool _isVerifying = false;
    bool _biometric = true;
    bool _isBiometricSupported = false;
    List<BiometricType> _bioList = [];
    List<BiometricType> get bioList => _bioList;
    bool get biometric => _biometric;
    bool get isBiometricSupported => _isBiometricSupported;

    bool get isLoading => _isLoading;
    bool get isVerifying => _isVerifying;

    Future<void> _callSetting() async {
      final LocalAuthentication bioAuth = LocalAuthentication();
      _bioList = await bioAuth.getAvailableBiometrics();
      if(_bioList.isEmpty){
        try{
          AppSettings.openLockAndPasswordSettings();
        }catch(e){
          debugPrint('error -> $e');
        }
      }
    }

  Future<void> updatePin(String pin) async {
    await authRepo.writeSecureData(AppConstants.biometricPin, pin);
  }

    void checkBiometricSupport() async {
      final LocalAuthentication bioAuth = LocalAuthentication();
      _isBiometricSupported = await bioAuth.canCheckBiometrics || await bioAuth.isDeviceSupported();
    }

    bool setBiometric(bool isActive) {
      _callSetting().then((value) {
        _callSetting();
      });

      final String? pin = Get.find<BottomSliderController>().pin;

      Get.find<ProfileController>().verifyPin(getPin: pin, isUpdateTwoFactor: false).then((response) async {
        if(response.statusCode == 200 && response.body != null) {
          _biometric = isActive;
          authRepo.setBiometric(isActive && _bioList.isNotEmpty);
          try{
            await authRepo.writeSecureData(AppConstants.biometricPin, pin);
          }catch(error) {
            debugPrint('error -> $error');
          }
          Get.back(closeOverlays: true);
          update();
        }
      });

      return _biometric;
    }

    Future<String> getBiometricPin() async {
      return await authRepo.readSecureData(AppConstants.biometricPin);
    }

    Future<void> removeBiometricPin() async {
      return await  authRepo.deleteSecureData(AppConstants.biometricPin);
    }

    Future<void> authenticateWithBiometric(bool autoLogin, String? pin) async {
      final LocalAuthentication bioAuth = LocalAuthentication();

      _bioList = await bioAuth.getAvailableBiometrics();

      if((await bioAuth.canCheckBiometrics || await bioAuth.isDeviceSupported()) && authRepo.isBiometricEnabled()) {
        final List<BiometricType> availableBiometrics = await bioAuth.getAvailableBiometrics();

        if (availableBiometrics.isNotEmpty && (!autoLogin || await getBiometricPin() != '')) {
          try {
            final bool didAuthenticate = await bioAuth.authenticate(
              localizedReason: autoLogin ? 'please_authenticate_to_login'.tr : 'please_authenticate_to_easy_access_for_next_time'.tr,
              options: const AuthenticationOptions(stickyAuth: true, biometricOnly: true),
            );

            if(didAuthenticate) {
              if(autoLogin) {
                login(code: getUserData()?.countryCode, phone: getUserData()?.phone, password: await getBiometricPin());
              }else{
                authRepo.writeSecureData(AppConstants.biometricPin, pin);
              }

            }else{
              if(pin != null) {
                authRepo.setBiometric(false);
              }

            }
          } catch(e) {
            debugPrint('error -> $e');
          }
        }
      }
    }


  Future<Response> checkPhone(String phoneNumber) async{
    _isLoading = true;
    update();
    Response response = await authRepo.checkPhoneNumber(phoneNumber: phoneNumber);
    if(response.statusCode == 200){
      if(!Get.find<SplashController>().configModel!.phoneVerification!) {
        await requestCameraPermission(fromEditProfile: false);
      }else if(response.body['otp'] == "active"){
        Get.find<VerificationController>().startTimer();
        Get.toNamed(RouteHelper.getVerifyRoute());
      }else{
        showCustomSnackBarHelper(response.body['message']);
      }
    } else if(response.statusCode == 403 && response.body['user_type'] == 'agent'){
      String? countryCode;
      String? nationalNumber;
      try{
        PhoneNumber number = await PhoneNumberUtil().parse(phoneNumber);


        countryCode = '+${number.countryCode}';
        nationalNumber = number.nationalNumber;
      }
      catch(e){
        debugPrint('error ===> $e');
      }
      authRepo.setBiometric(false);
      Get.offNamed(RouteHelper.getLoginRoute(countryCode: countryCode,phoneNumber: nationalNumber));

    }
    else{
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    update();
    return response;
  }

    /// Camera permission......
  Future<void> requestCameraPermission({required bool fromEditProfile}) async {
    var serviceStatus = await Permission.camera.status;

    if(serviceStatus.isGranted && GetPlatform.isAndroid){
      Get.offNamed(RouteHelper.getSelfieRoute(fromEditProfile: fromEditProfile));
    }else{
      if(GetPlatform.isIOS){
        Get.offNamed(RouteHelper.getSelfieRoute(fromEditProfile: fromEditProfile));
      }else{
        final status = await Permission.camera.request();
        if (status == PermissionStatus.granted) {
          Get.offNamed(RouteHelper.getSelfieRoute(fromEditProfile: fromEditProfile));
        } else if (status == PermissionStatus.denied) {
          Get.find<CameraScreenController>().showDeniedDialog(fromEditProfile: fromEditProfile);
        } else if (status == PermissionStatus.permanentlyDenied) {
          Get.find<CameraScreenController>().showPermanentlyDeniedDialog(fromEditProfile: fromEditProfile);
        }
      }

    }
  }

    //Phone Number verification
  Future<ResponseModel> phoneVerify(String phoneNumber,String otp) async{
    _isLoading = true;
    update();
    Response response = await authRepo.verifyPhoneNumber(phoneNumber: phoneNumber, otp: otp);

    ResponseModel responseModel;
    if(response.statusCode == 200){
      responseModel = ResponseModel(true, response.body["message"]);
      Get.find<VerificationController>().cancelTimer();
      showCustomSnackBarHelper(responseModel.message, isError: false);
      requestCameraPermission(fromEditProfile: false);
    }
    else{
      responseModel = ResponseModel(false, response.body['errors'][0]['message']);
      showCustomSnackBarHelper(responseModel.message, isError: true);
    }
    _isLoading = false;
    update();
    return responseModel;
  }


  // registration ..

  Future<Response> login({String? code, String? phone, String? password}) async {
    _isLoading = true;
    update();
    Response response = await authRepo.login(dialCode: '$code', phone: '$phone', password: password);


    if (response.statusCode == 200 && response.body['response_code'] == 'auth_login_200' && response.body['content'] != null) {
       authRepo.saveUserToken(response.body['content']).then((value) async {
          await authRepo.updateToken();
       });
      Get.offAllNamed(RouteHelper.getNavBarRoute(), arguments: true);
      _isLoading = false;
    }
    else{
      _isLoading = false;
      ApiChecker.checkApi(response);
    }
    update();
    return response;
  }



  Future<Response> checkOtp()async{
      _isLoading = true;
      update();
      Response  response = await authRepo.checkOtpApi();
      if(response.statusCode == 200){
        _isLoading = false;
      }else{
        _isLoading = false;
        ApiChecker.checkApi(response);
      }
      update();
      return response;
  }

  Future<Response> verifyOtp(String otp)async{
    _isVerifying = true;
    update();
    Response  response = await authRepo.verifyOtpApi(otp: otp);
    if(response.statusCode == 200){
      _isVerifying = false;
      Get.back();
    }else{
      ApiChecker.checkApi(response);
      _isVerifying = false;
    }
    update();
    return response;
  }


  Future<Response> logout() async {
    _isLoading = true;
    update();
    Response response = await authRepo.logout();
    if (response.statusCode == 200) {

      Get.offAllNamed(RouteHelper.getSplashRoute());
      _isLoading = false;
    }
    else{
      _isLoading = false;
      ApiChecker.checkApi(response);
    }
    update();
    return response;
  }

  Future<ResponseModel?> otpForForgetPass(String phoneNumber) async{
    _isLoading = true;
    update();
    Response response = await authRepo.forgetPassOtp(phoneNumber: phoneNumber);
    ResponseModel? responseModel;

    if(response.statusCode == 200){
      _isLoading = false;
      Get.toNamed(RouteHelper.getFVeryficationRoute(phoneNumber: phoneNumber));
    }
    else{
      _isLoading = false;
      ApiChecker.checkApi(response);

    }
    update();
    return responseModel;
  }

  Future<Response> verificationForForgetPass(String? phoneNumber, String otp) async{
    _isLoading = true;
    update();
    Response response = await authRepo.forgetPassVerification(phoneNumber: phoneNumber,otp: otp);
    if(response.statusCode == 200){
      _isLoading = false;
      Get.offNamed(RouteHelper.getFResetPassRoute(phoneNumber: phoneNumber));
    }
    else{
      _isLoading = false;
      ApiChecker.checkApi(response);
    }
    update();
    return response;
  }

  Future<Response> resetPassword(String? phoneNumber, String? otp, String newPass, String confirmPass) async{
    _isLoading = true;
    update();
    Response response = await authRepo.forgetPassReset(
      phoneNumber: phoneNumber, otp: otp,
      password: newPass,confirmPass: confirmPass,
    );
    if(response.statusCode == 200){
      _isLoading = false;
      String countryCode , nationalNumber;
      try{
        PhoneNumber num = await PhoneNumberUtil().parse(phoneNumber!);
        countryCode = '+${num.countryCode}';
        nationalNumber = num.nationalNumber;
        await updatePin(newPass);
        Get.offAllNamed(RouteHelper.getLoginRoute(countryCode: countryCode,phoneNumber: nationalNumber));
      }catch(e){
        showCustomSnackBarHelper('something_error_in_your_phone_number'.tr, isError: false);
      }
    }
    else{
      _isLoading = false;
     ApiChecker.checkApi(response);
    }
    update();
    return response;
  }

  String? getAuthToken() {
    return authRepo.getUserToken();
  }

  bool isLoggedIn() {
    return authRepo.isLoggedIn();
  }

  Future setUserData(UserDataModel userData) async {
   await authRepo.setUserData(userData);
  }
  UserDataModel? getUserData(){
      UserDataModel? userData;
      if(authRepo.getUserData() != '') {
        userData = UserDataModel.fromJson(jsonDecode(authRepo.getUserData()));
      }
    return userData;
  }

  void removeUserData()=>  authRepo.removeUserData();

  void removeCustomerToken() {
    authRepo.removeCustomerToken();
  }

  PageController pageController = PageController();
  int _page = 0;

  int get page => _page;
  change(int a) {
    _page = a;
    update();
  }


  Future removeUser() async {
    _isLoading = true;
    update();
    Get.back();
    Response response = await authRepo.deleteUser();

    if (response.statusCode == 200) {
      Get.find<SplashController>().removeSharedData().then((value) {
        showCustomSnackBarHelper('your_account_remove_successfully'.tr);
        Get.offAllNamed(RouteHelper.getSplashRoute());
      });
    }else{
      Get.back();
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    update();
  }
}
