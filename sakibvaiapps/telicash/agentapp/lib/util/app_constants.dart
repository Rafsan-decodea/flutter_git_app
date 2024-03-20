import 'package:six_cash/features/language/domain/models/language_model.dart';
import 'images.dart';

class AppConstants {
  static const String appName = '6Cash Agent';
  static const String baseUrl = 'YOUR_BASE_URL_HERE';
  static const bool demo = false;
  static const double appVersion = 4.2;
  static const String agentPhoneCheckUri = '/api/v1/agent/auth/check-phone';
  static const String agentPhoneVerifyUri = '/api/v1/agent/auth/verify-phone';
  static const String customerRegistrationUri = '/api/v1/agent/auth/register';
  static const String agentUpdateProfile = '/api/v1/agent/update-profile';
  static const String agentLoginUri = '/api/v1/agent/auth/login';
  static const String agentLogoutUri = '/api/v1/agent/logout';
  static const String agentForgetPassOtpUri = '/api/v1/agent/auth/forgot-password';
  static const String agentForgetPassVerification = '/api/v1/agent/auth/verify-token';
  static const String agentForgetPassReset = '/api/v1/agent/auth/reset-password';
  static const String agentLinkedWebsite= '/api/v1/agent/linked-website';
  static const String agentBanner= '/api/v1/agent/get-banner';
  static const String agentTransactionHistory= '/api/v1/agent/transaction-history';
  static const String configUri = '/api/v1/config';
  static const String agentProfileData = '/api/v1/agent/get-agent';
  static const String agentCheckOtp = '/api/v1/agent/check-otp';
  static const String agentVerifyOtp = '/api/v1/agent/verify-otp';
  static const String agentChangePin = '/api/v1/agent/change-pin';
  static const String agentUpdateTwoFactor = '/api/v1/agent/update-two-factor';
  static const String agentRequestMoney = '/api/v1/agent/request-money';
  static const String agentCashIn = '/api/v1/agent/send-money';
  static const String agentPinVerify = '/api/v1/agent/verify-pin';
  static const String agentAddMoney = '/api/v1/agent/add-money';
  static const String faqUri = '/api/v1/faq';
  static const String notificationUri = '/api/v1/agent/get-notification';
  static const String transactionHistoryUri = '/api/v1/agent/transaction-history';
  static const String requestedMoneyUri = '/api/v1/agent/get-requested-money';
  static const String acceptedRequestedMoneyUri = '/api/v1/agent/request-money/approve';
  static const String deniedRequestedMoneyUri = '/api/v1/agent/request-money/deny';
  static const String tokenUri = '/api/v1/agent/update-fcm-token';
  static const String checkCustomerUri = '/api/v1/check-customer';
  static const String checkAgentUri = '/api/v1/check-agent';
  static const String updateKycInformation = '/api/v1/agent/update-kyc-information';
  static const String withdrawMethodList = '/api/v1/agent/withdrawal-methods';
  static const String withdrawRequest = '/api/v1/agent/withdraw';
  static const String getWithdrawalRequest = '/api/v1/agent/withdrawal-requests';
  static const String agentRemove = '/api/v1/agent/remove-account';


  // Shared Key
  static const String theme = 'theme';
  static const String token = 'token';
  static const String agentCountryCode = 'agent_country_code';//not in project
  static const String languageCode = 'language_code';
  static const String topic = 'notify';
  static const String userData = 'user';
  static const String sendMoneySuggestList = 'send_money_suggest';
  static const String requestMoneySuggestList = 'request_money_suggest';
  static const String recentAgentList = 'recent_agent_list';
  static const String pending = 'pending';
  static const String approved = 'approved';
  static const String denied = 'denied';

  static const String cashIn = 'cash_in';
  static const String cashOut = 'cash_out';
  static const String sendMoney = 'send_money';
  static const String receivedMoney = 'received_money';
  static const String addMoney = 'add_money';
  static const String agentCommission = 'agent_commission';
  static const String withdraw = 'withdraw';

  static const String showOnboardScreen = 'show_onboard_screen';
  static const String biometricAuth = 'biometric_auth';
  static const String biometricPin = 'biometric';
  
  //topic
  static const String all = 'all';
  static const String agent = 'agents';



  static const List<String> inputAmountList =  [ '500', '1,000', '2,000', '5,000', '10,000', '57,0059'];

  //input balance digit length
  static const int balanceInputLen = 10;

  static List<LanguageModel> languages = [
    LanguageModel(imageUrl: Images.english, languageName: 'English', countryCode: 'US', languageCode: 'en'),
    LanguageModel(imageUrl: Images.saudi, languageName: 'Arabic', countryCode: 'SA', languageCode: 'ar'),
  ];
}
