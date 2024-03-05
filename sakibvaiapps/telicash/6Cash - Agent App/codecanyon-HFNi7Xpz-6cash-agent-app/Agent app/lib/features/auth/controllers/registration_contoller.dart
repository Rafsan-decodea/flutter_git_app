import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/data/api/api_client.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/auth/domain/models/signup_body_mode.dart';
import 'package:six_cash/features/auth/domain/reposotories/auth_repo.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';
import 'package:six_cash/helper/route_helper.dart';

class RegistrationController extends GetxController implements GetxService{
  final AuthRepo authRepo;
  RegistrationController({required this.authRepo});


  String _countryCode = Get.find<SplashController>().getCountryCode();
  String? _phoneNumber;
  bool _isLoading = false;



  String get countryCode => _countryCode;
  String? get phoneNumber => _phoneNumber;
  bool get isLoading => _isLoading;


  Future<Response> registration(SignUpBodyModel signUpBody,List<MultipartBody> multipartBody) async{
    _isLoading = true;
    update();

    Map<String, String> allCustomerInfo = {
      'f_name': signUpBody.fName ?? '',
      'l_name': signUpBody.lName ?? '',
      'phone': signUpBody.phone!,
      'dial_country_code': signUpBody.dialCountryCode!,
      'password': signUpBody.password!,
      'gender': signUpBody.gender!,
      'occupation': signUpBody.occupation ?? '',
    };

    if(signUpBody.otp != null) {
      allCustomerInfo.addAll({'otp': signUpBody.otp!});
    }

    if(signUpBody.email != '') {
      allCustomerInfo.addAll({'email': signUpBody.email!});
    }

    Response response = await authRepo.registration(allCustomerInfo, multipartBody);

    if (response.statusCode == 200) {
      Get.offAllNamed(RouteHelper.getLoginRoute(countryCode: signUpBody.dialCountryCode, phoneNumber: signUpBody.phone));

    } else {
      ApiChecker.checkApi(response);

    }

    _isLoading = false;
    update();

    return response;
  }


  void setCountryCode(String code) {
    _countryCode = code;
    update();
  }

  void setPhoneNumber(String phone) {
    _phoneNumber = phone;
    update();
  }

  void setInitCountryCode(String code) {
    _countryCode = code;
  }

  void sendOtpResponse({required String number}){
    setPhoneNumber(number);
    Get.find<AuthController>().checkPhone(number);
  }


}