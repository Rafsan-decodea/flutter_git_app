import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/home/controllers/menu_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/profile/controllers/theme_controller.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/common/models/user_data_model.dart';
import 'package:six_cash/features/profile/domain/models/profile_model.dart';
import 'package:six_cash/features/profile/domain/reposotories/profile_repo.dart';
import 'package:six_cash/features/home/domain/enums/navbar_type_enum.dart';
import 'package:six_cash/helper/dialog_helper.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/common/widgets/custom_country_code_picker_widget.dart';
import 'package:six_cash/common/widgets/custom_dialog_widget.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import '../../transaction_money/controllers/bootom_slider_controller.dart';

class ProfileController extends GetxController implements GetxService {
  final ProfileRepo profileRepo;
  ProfileController({required this.profileRepo});

  final BottomSliderController _bottomSliderController = Get.find<BottomSliderController>();
  ProfileModel? _profileModel;
  bool _isLoading = false;
  String _gender = 'Male';

  ProfileModel? get profileModel => _profileModel;
  bool get isLoading => _isLoading;
  String get gender => _gender;

  set setProfileModel(ProfileModel? value) {
    _profileModel = value;
  }


  Future<void> profileData({bool reload = false, bool isUpdate = false}) async {
    if(reload || _profileModel == null) {
      _profileModel = null;
      _isLoading = true;
      if(isUpdate) {
        update();
      }
    }

    if(_profileModel == null) {
      Response response = await profileRepo.getProfileDataApi();
      if (response.statusCode == 200) {
        _profileModel = ProfileModel.fromJson(response.body);

        Get.find<AuthController>().setUserData(UserDataModel(
          name: '${_profileModel!.fName} ${_profileModel!.lName}',
          phone: profileModel?.phone?.replaceAll('${CustomCountryCodePikerWidget.getCountryCode(profileModel?.phone)}', ''),
          countryCode: CustomCountryCodePikerWidget.getCountryCode(profileModel?.phone),
          qrCode: _profileModel?.qrCode,
        ));

      } else {
        ApiChecker.checkApi(response);
      }
      _isLoading = false;
      update();

    }

  }

  Future<void> onChangePin({required String oldPassword, required String newPassword, required String confirmPassword}) async {
    if ((oldPassword.length < 4) ||
        (newPassword.length < 4) ||
        (confirmPassword.length < 4)) {
      showCustomSnackBarHelper('please_input_4_digit_pin'.tr);
    } else if (newPassword != confirmPassword) {
      showCustomSnackBarHelper('pin_not_match'.tr);
    } else {
      _isLoading = true;
      update();
      Response response = await profileRepo.changePinApi(
        oldPin: oldPassword, newPin: newPassword, confirmPin: confirmPassword,
      );

      if (response.statusCode == 200) {
        await Get.find<AuthController>().updatePin(newPassword);
        Get.find<MenuItemController>().updateNavbarScreen(NavbarType.profileScreen, isUpdate: false);
        UserDataModel? userData = Get.find<AuthController>().getUserData();

        Get.offAllNamed(RouteHelper.getLoginRoute(
          countryCode: userData?.countryCode,
          phoneNumber: userData?.phone,
        ));
      } else {
        // Get.back();
        ApiChecker.checkApi(response);
      }
      _isLoading = false;
      update();
    }
  }

  Future<Response> verifyPin({required String? getPin, bool isUpdateTwoFactor = true}) async {
    _bottomSliderController.setIsLoading = true;
    final Response response = await profileRepo.pinVerifyApi(pin: getPin);

    if (response.statusCode == 200) {
      _bottomSliderController.setIsLoading = false;
      if(isUpdateTwoFactor) {
        updateTwoFactorStatus();
      }
      _bottomSliderController.resetPinField();
    } else {
      _bottomSliderController.setIsLoading = false;
      _bottomSliderController.resetPinField();
      Get.back();
      showCustomSnackBarHelper('message');
      ApiChecker.checkApi(response);
    }
    update();
    return response;
  }

  Future<void> updateTwoFactorStatus() async {
    _isLoading = true;
    update();
    Response response = await profileRepo.updateTwoFactorApi();
    await profileData(reload: true);
    if (response.statusCode == 200) {
      showCustomSnackBarHelper(response.body['message'], isError: false);
      _isLoading = false;
    } else {
      ApiChecker.checkApi(response);
      _isLoading = false;
    }
    update();
  }



  Future onTapTwoFactor() async {
    await verifyPin(getPin: _bottomSliderController.pin);
  }


  ///Change theme..
  bool _isSwitched = Get.find<ThemeController>().darkTheme;
  var textValue = 'Switch is OFF';

  bool get isSwitched => _isSwitched;

  void onChangeTheme() {
    if (_isSwitched == false) {
      _isSwitched = true;
      textValue = 'Switch Button is ON';
      Get.find<ThemeController>().onChangeTheme();
      update();

    } else {
      _isSwitched = false;
      textValue = 'Switch Button is OFF';
      Get.find<ThemeController>().onChangeTheme();
      update();
    }
  }

  void logOut() {
    DialogHelper.showAnimatedDialog(Get.context!,
        CustomDialogWidget(
          icon: Icons.logout,
          title: 'logout'.tr,
          description: 'are_you_sure_you_want_to_logout'.tr,
          onTapFalseText: 'clear_logout'.tr,
          onTapTrueText: 'logout'.tr,
          isFailed: true,
          onTapFalse: (){
            Get.find<AuthController>().removeBiometricPin().then((value) {
              Get.find<AuthController>().change(0);
              Get.find<AuthController>().logout();
              Get.find<MenuItemController>().updateNavbarScreen(NavbarType.profileScreen, isUpdate: false);
              Get.find<SplashController>().removeSharedData();
              Get.back();
            });
          },
          onTapTrue: (){
            Get.find<AuthController>().logout();
            Navigator.of(Get.context!).pop(true);
          },
        ),
        dismissible: false,
        isFlip: true);
  }

  void onChangeGender(String select){
    _gender = select;
    update();
  }

}
