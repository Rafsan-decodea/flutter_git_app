
import 'dart:convert';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:six_cash/features/home/controllers/banner_controller.dart';
import 'package:six_cash/features/auth/controllers/registration_contoller.dart';
import 'package:six_cash/features/profile/controllers/edit_profile_controller.dart';
import 'package:six_cash/features/profile/controllers/faq_controller.dart';
import 'package:six_cash/features/auth/controllers/forget_password_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/bootom_slider_controller.dart';
import 'package:six_cash/features/add_money/controllers/add_money_controller.dart';
import 'package:six_cash/features/key_verificaiton/controllers/kyc_verify_controller.dart';
import 'package:six_cash/features/home/controllers/menu_controller.dart';
import 'package:six_cash/features/notification/controllers/notification_controller.dart';
import 'package:six_cash/features/camera_verification/controllers/qr_code_scanner_controller.dart';
import 'package:six_cash/features/profile/controllers/screen_shot_widget_controller.dart';
import 'package:six_cash/features/requested_money/controllers/requested_money_controller.dart';
import 'package:six_cash/features/camera_verification/controllers/camera_screen_controller.dart';
import 'package:six_cash/features/language/controllers/language_controller.dart';
import 'package:six_cash/features/language/controllers/localization_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/transaction_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/profile/controllers/theme_controller.dart';
import 'package:six_cash/features/history/controllers/transaction_history_controller.dart';
import 'package:six_cash/features/auth/controllers/verification_controller.dart';
import 'package:six_cash/features/home/controllers/websitelink_controller.dart';
import 'package:six_cash/data/api/api_client.dart';
import 'package:six_cash/features/add_money/domain/reposotories/add_money_repo.dart';
import 'package:six_cash/features/auth/domain/reposotories/auth_repo.dart';
import 'package:six_cash/features/home/domain/reposotories/banner_repo.dart';
import 'package:six_cash/features/profile/domain/reposotories/faq_repo.dart';
import 'package:six_cash/features/key_verificaiton/domain/reposotories/kyc_verify_repo.dart';
import 'package:six_cash/features/language/domain/reposotories/language_repo.dart';
import 'package:six_cash/features/notification/domain/reposotories/notification_repo.dart';
import 'package:six_cash/features/profile/domain/reposotories/profile_repo.dart';
import 'package:six_cash/features/requested_money/domain/reposotories/requested_money_repo.dart';
import 'package:six_cash/features/transaction_money/domain/reposotories/transaction_repo.dart';
import 'package:six_cash/features/history/domain/reposotories/transaction_history_repo.dart';
import 'package:six_cash/features/home/domain/reposotories/websitelink_repo.dart';
import 'package:six_cash/features/splash/domain/reposotories/splash_repo.dart';
import 'package:six_cash/util/app_constants.dart';
import 'package:six_cash/features/language/domain/models/language_model.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:unique_identifier/unique_identifier.dart';

Future<Map<String, Map<String, String>>> init() async {
  // Core
  final sharedPreferences = await SharedPreferences.getInstance();
  final BaseDeviceInfo deviceInfo =  await DeviceInfoPlugin().deviceInfo;
  String uniqueId = await UniqueIdentifier.serial ?? '';

  Get.lazyPut(() => uniqueId);
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => deviceInfo);

  Get.lazyPut(() => ApiClient(
    appBaseUrl: AppConstants.baseUrl,
    sharedPreferences: Get.find(),
    uniqueId: Get.find(),
    deiceInfo: Get.find(),
  ));

  // Repository
   Get.lazyPut(() => SplashRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  Get.lazyPut(() => LanguageRepo());
  Get.lazyPut(() => TransactionRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => AuthRepo(apiClient: Get.find(),sharedPreferences: Get.find()));
  Get.lazyPut(() => ProfileRepo(apiClient: Get.find()));
  Get.lazyPut(() => ProfileRepo(apiClient: Get.find()));
  Get.lazyPut(() => WebsiteLinkRepo(apiClient: Get.find()));
  Get.lazyPut(() => BannerRepo(apiClient: Get.find()));
  Get.lazyPut(() => AddMoneyRepo(apiClient: Get.find()));
  Get.lazyPut(() => FaqRepo(apiClient: Get.find()));
  Get.lazyPut(() => NotificationRepo(apiClient: Get.find()));
  Get.lazyPut(() => RequestedMoneyRepo(apiClient: Get.find()));
  Get.lazyPut(() => TransactionHistoryRepo(apiClient: Get.find()));
  Get.lazyPut(() => KycVerifyRepo(apiClient: Get.find()));

  // Controller
  Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
   Get.lazyPut(() => SplashController(splashRepo: Get.find()));
  Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));
  Get.lazyPut(() => LanguageController(sharedPreferences: Get.find()));
  Get.lazyPut(() => TransactionMoneyController(transactionRepo: Get.find(), authRepo: Get.find()));
  Get.lazyPut(() => AddMoneyController(addMoneyRepo:Get.find() ));
  Get.lazyPut(() => NotificationController(notificationRepo: Get.find()));
  Get.lazyPut(() => ProfileController(profileRepo: Get.find()));
  Get.lazyPut(() => FaqController(faqRepo: Get.find()));
  Get.lazyPut(() => BottomSliderController());

  Get.lazyPut(() => MenuItemController());
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => RegistrationController(authRepo: Get.find()));
  Get.lazyPut(() => VerificationController(authRepo: Get.find()));
  Get.lazyPut(() => CameraScreenController());
  Get.lazyPut(() => ForgetPassController());
  Get.lazyPut(() => WebsiteLinkController(websiteLinkRepo: Get.find()));
  Get.lazyPut(() => QrCodeScannerController());
  Get.lazyPut(() => BannerController(bannerRepo: Get.find()));
  Get.lazyPut(() => TransactionHistoryController(transactionHistoryRepo: Get.find()));
  Get.lazyPut(() => EditProfileController(authRepo: Get.find()));
  Get.lazyPut(() => RequestedMoneyController(requestedMoneyRepo: Get.find()));
  Get.lazyPut(() => ScreenShootWidgetController());
  Get.lazyPut(() => KycVerifyController(kycVerifyRepo: Get.find()));



  // Retrieving localized data
  Map<String, Map<String, String>> languages = {};
  for(LanguageModel languageModel in AppConstants.languages) {
    String jsonStringValues =  await rootBundle.loadString('assets/language/${languageModel.languageCode}.json');
    Map<String, dynamic> mappedJson = jsonDecode(jsonStringValues);
    Map<String, String> json = {};
    mappedJson.forEach((key, value) {
      json[key] = value.toString();
    });
    languages['${languageModel.languageCode}_${languageModel.countryCode}'] = json;
  }
  return languages;
}
