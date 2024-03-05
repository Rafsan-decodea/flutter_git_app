import 'package:country_code_picker/country_code_picker.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/common/models/config_model.dart';
import 'package:six_cash/features/splash/domain/reposotories/splash_repo.dart';
import 'package:get/get.dart';

class SplashController extends GetxController implements GetxService{
   final SplashRepo splashRepo;
  SplashController({required this.splashRepo});

  ConfigModel? _configModel;


  bool _firstTimeConnectionCheck = true;
  bool get firstTimeConnectionCheck => _firstTimeConnectionCheck;

  ConfigModel? get configModel => _configModel;

  Future<Response> getConfigData() async {
    Response response = await splashRepo.getConfigData();
    if(response.hasError) {
      ApiChecker.checkApi(response);
    }else {
     _configModel =  ConfigModel.fromJson(response.body);
     update();

    }
    return response;
  }

  Future<bool> initSharedData() {
    return splashRepo.initSharedData();
  }

  Future<bool> removeSharedData() {
    return splashRepo.removeSharedData();
  }



  void setFirstTimeConnectionCheck(bool isChecked) {
    _firstTimeConnectionCheck = isChecked;
  }

  String getCountryCode (){
    CountryCode countryCode =  CountryCode.fromCountryCode(Get.find<SplashController>().configModel!.country!);
    String countryCode0 = countryCode.toString();
    return countryCode0;
  }
}
