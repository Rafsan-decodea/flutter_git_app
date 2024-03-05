import 'dart:convert';
import 'package:get/get.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/auth/domain/models/signup_body_mode.dart';
import 'package:six_cash/common/models/contact_model.dart';
import 'package:six_cash/features/auth/screens/login_screen.dart';
import 'package:six_cash/features/auth/screens/pin_set_screen.dart';
import 'package:six_cash/features/camera_verification/screens/camera_screen.dart';
import 'package:six_cash/features/auth/screens/varification_screen.dart';
import 'package:six_cash/features/home/screens/nav_bar_screen.dart';
import 'package:six_cash/features/auth/screens/forget_pin_screen.dart';
import 'package:six_cash/features/auth/screens/reset_pin_screen.dart';
import 'package:six_cash/features/history/screens/transaction_history_screen.dart';
import 'package:six_cash/features/home/screens/home_screen.dart';
import 'package:six_cash/features/language/screens/language_screen.dart';
import 'package:six_cash/features/notification/screens/notification_screen.dart';
import 'package:six_cash/features/profile/screens/profile_screen.dart';
import 'package:six_cash/features/profile/screens/change_pin_screen.dart';
import 'package:six_cash/features/profile/screens/edit_profile_screen.dart';
import 'package:six_cash/features/profile/screens/faq_screen.dart';
import 'package:six_cash/features/profile/screens/html_view_screen.dart';
import 'package:six_cash/features/profile/screens/support_screen.dart';
import 'package:six_cash/features/splash/screens/splash_screen.dart';
import 'package:six_cash/features/transaction_money/screens/balance_input_screen.dart';
import 'package:six_cash/features/transaction_money/screens/transaction_confirmation_screen.dart';
import 'package:six_cash/features/transaction_money/widgets/share_statement_widget.dart';

class RouteHelper {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String navbar = '/navbar';
  static const String history = '/history';
  static const String notification = '/notification';
  static const String themeAndLanguage = '/themeAndLanguage';
  static const String profile = '/profile';
  static const String changePinScreen = '/change_pin_screen';
  static const String verifyOtpScreen = '/verify_otp_screen';
  static const String noInternetScreen = '/no_internet_screen';
  static const String sendMoney = '/send_money';
  static const String verifyScreen = '/verify_account';
  static const String cameraScreen = '/camera_screen';
  static const String loginScreen = '/login_screen';
  static const String forgetPinScreen = '/f_phone_number';
  static const String verificationScreen = '/verification_screen';
  static const String resetPinScreen = '/f_reset_pass_screen';

  static const String qrCodeScannerScreen = '/qr_code_scanner_screen';


  static const String sendMoneyBalanceInput = '/send_money_balance_inputsend_money_balance_input';
  static const String sendMoneyConfirmation = '/transaction_confirmation_screen.dart';

  static const String requestMoney = '/request_money';
  static const String requestMoneyBalanceInput = '/requestMoney_balance_input';
  static const String requestMoneyConfirmation = '/requestMoney_confirmation';

  static const String cashOut = '/cash_out';
  static const String cashOutBalanceInput = '/cash_out_balance_input';
  static const String cashOutConfirmation = '/cash_out_confirmation';

  static const String addMoney = '/add_money';
  static const String addMoneyInput = '/add_money_input';
  static const String addMoneySuccesful = '/add_money_succesful';
  static const String editProfileScreen = '/edit_profile_screen';
  static const String faq = '/faq';
  static const String aboutUs = '/about_us';
  static const String terms = '/terms';
  static const String privacy = '/privacy_policy';
  // static const String requested_money = '/requested_money';
  static const String shareStatement = '/share_statement';
  static const String support = '/support';
  static const String choseLanguageScreen = '/chose_language_screen';
  static const String pinSetScreen = '/pin_set_screen';


  static getSplashRoute() => splash;
  static String getHomeRoute(String name) => '$home?name=$name';
  static  getLoginRoute({required String? countryCode, required String? phoneNumber}) => '$loginScreen?country-code=$countryCode&phone-number=$phoneNumber';
  static  getVerifyRoute({String? phoneNumber}) => '$verifyScreen?phone_number=${Uri.encodeComponent(phoneNumber ?? 'null')}';
  static  getSelfieRoute({required bool fromEditProfile}) => '$cameraScreen?page=${fromEditProfile?'edit-profile':'verify'}';
  static  getNavBarRoute() => navbar;
  static  getRequestMoneyRoute({String? phoneNumber,required bool fromEdit}) => '$requestMoney?phone-number=$phoneNumber&from-edit=${fromEdit?'edit-number':'home'}';
  static  getForgetPassRoute({required String? countryCode,required String phoneNumber}) => '$forgetPinScreen?country-code=$countryCode&phone-number=$phoneNumber';
  static  getRequestMoneyBalanceInputRoute() => requestMoneyBalanceInput;
  static  getRequestMoneyConfirmationRoute({required String inputBalanceText}) => '$requestMoneyConfirmation?input-balance=$inputBalanceText';
  static  getNoInternetRoute() => noInternetScreen;
  static  getSendMoneyRoute({String? phoneNumber,required bool fromEdit}) => '$sendMoney?phone-number=$phoneNumber&from-edit=${fromEdit?'edit-number':'home'}';
  static  getSendMoneyInputRoute({required String transactionType}) => '$sendMoneyBalanceInput?transaction-type=$transactionType';
  static  getSendMoneyConfirmationRoute({required String inputBalanceText,required String transactionType}) => '$sendMoneyConfirmation?input-balance=$inputBalanceText&transaction-type=$transactionType';
  static  getChoseLanguageRoute() => choseLanguageScreen;
  static  getCashOutScreenRoute({String? phoneNumber,required bool fromEdit}) => '$cashOut?phone-number=$phoneNumber&from-edit=${fromEdit?'edit-number':'home'}';
  static  getCashOutBalanceInputRoute() => cashOutBalanceInput;
  static  getFResetPassRoute({required String? phoneNumber}) => '$resetPinScreen?phone-number=$phoneNumber';
  static  getEditProfileRoute() => editProfileScreen;
  static  getChangePinRoute() => changePinScreen;
  static  getAddMoneyInputRoute() => addMoneyInput;
  static  getFVeryficationRoute({required String phoneNumber}) => '$verificationScreen?phone-number=$phoneNumber';

  static getSupportRoute() => support;
  static getCashOutConfirmationRoute({required String inputBalanceText}) => '$cashOutConfirmation?input-balance=$inputBalanceText';
  static  getShareStatementRoute({ required String amount,  required String transactionType, required ContactModel contactModel}) {
    String data =  base64Url.encode(utf8.encode(jsonEncode(contactModel.toJson())));
    String transactionType0 = base64Url.encode(utf8.encode(transactionType));
    return '$shareStatement?amount=$amount&transaction-type=$transactionType0&contact=$data';
  }

  static  getPinSetRoute({required SignUpBodyModel signUpBody}) {
    String signUpData =  base64Url.encode(utf8.encode(jsonEncode(signUpBody.toJson())));
    return '$pinSetScreen?signup=$signUpData';
  }



  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: navbar, page: () => const NavBarScreen()),
    GetPage(name: shareStatement, page: () => ShareStatementWidget(
        amount: Get.parameters['amount'],
        charge: null, trxId: null,
        transactionType: utf8.decode(base64Url.decode(Get.parameters['transaction-type']!.replaceAll(' ', '+'))),
        contactModel: ContactModel.fromJson(jsonDecode(utf8.decode(base64Url.decode(Get.parameters['contact']!))
        )))),

    GetPage(name: history, page: () => const TransactionHistoryScreen()),
    GetPage(name: notification, page: () => const NotificationScreen()),
    // GetPage(name: themeAndLanguage, page: () => ThemeAndLanguage()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: changePinScreen, page: () => const ChangePinScreen()),
    //GetPage(name: send_money, page: () => TransactionMoneyScreen(phoneNumber: Get.parameters['phone-number'],fromEdit: Get.parameters['from-edit']== 'edit-number')),
    GetPage(name: sendMoneyBalanceInput, page: () => BalanceInputScreen(transactionType: Get.parameters['transaction-type'])),
    GetPage(name: sendMoneyConfirmation, page: () => TransactionConfirmationScreen(inputBalance:double.tryParse(Get.parameters['input-balance']!),transactionType: Get.parameters['transaction-type'])),

    // GetPage(name: chose_login_or_reg_screen, page: () => ChoiceScreen()),
    GetPage(name: cameraScreen, page: () => CameraScreen(fromEditProfile: Get.parameters['page'] == 'edit-profile')),
    GetPage(name: loginScreen, page: () => LoginScreen(countryCode: Get.parameters['country-code']!.replaceAll(' ', '+'),phoneNumber: Get.parameters['phone-number'] != 'null' ? Get.parameters['phone-number'] : '' )),
    GetPage(transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 300), name: forgetPinScreen, page: () => ForgetPinScreen(
      countryCode: Get.parameters['country-code']!.replaceAll(' ', '+'),
      phoneNumber: Get.parameters['phone-number'],
    )),
    GetPage(name: verificationScreen, page: () => VerificationScreen(phoneNumber: Get.parameters['phone-number']!.replaceAll(' ', '+'),)),
    GetPage(name: resetPinScreen, page: () => ResetPinScreen(phoneNumber: Get.parameters['phone-number']!.replaceAll(' ', '+'),)),
    GetPage(name: choseLanguageScreen, page: () => const LanguageScreen()),

    GetPage(name: editProfileScreen, page: () => const EditProfileScreen()),

    GetPage(name: faq, page: () => FaqScreen(title: 'faq'.tr)),
    GetPage(name: aboutUs, page: () => HtmlViewScreen(title: 'about_us'.tr, url: Get.find<SplashController>().configModel!.aboutUs)),
    GetPage(name: terms, page: () => HtmlViewScreen(title: 'terms'.tr, url: Get.find<SplashController>().configModel!.termsAndConditions)),
    GetPage(name: privacy, page: () => HtmlViewScreen(title: 'privacy_policy'.tr, url: Get.find<SplashController>().configModel!.privacyPolicy)),
    GetPage(name: support, page: () => const SupportScreen()),

    GetPage(name: verifyScreen, page: () {
      final String? phoneNumber = Uri.decodeComponent(Get.parameters['phone_number']!)
          != 'null' ? Uri.decodeComponent(Get.parameters['phone_number']!) : null ;
      return VerificationScreen(
        phoneNumber: phoneNumber,
      );
    }),

    GetPage(name: pinSetScreen, page: () => PinSetScreen(
      signUpBody: SignUpBodyModel.fromJson(jsonDecode(utf8.decode(base64Url.decode(Get.parameters['signup']!)))),
    )),

  ];

}