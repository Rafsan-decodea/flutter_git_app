import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/add_money/domain/reposotories/add_money_repo.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/add_money/screens/web_screen.dart';

class AddMoneyController extends GetxController implements GetxService {
  final AddMoneyRepo addMoneyRepo;
  AddMoneyController({required this.addMoneyRepo});

 bool  _isLoading = false;
  bool get isLoading => _isLoading;

  String? _paymentMethod;
  String? get paymentMethod => _paymentMethod;


  Future<void> addMoney(double amount) async{
    _isLoading = true;
    update();
    Response response = await addMoneyRepo.addMoneyApi(amount : amount, paymentMethod: _paymentMethod!);
    if(response.statusCode == 200){
      if(response.body['link'] != null){
        Get.to(WebScreen(selectedUrl: response.body['link'], isPaymentUrl: true));
      }
    }else{
      ApiChecker.checkApi(response);
    }

    _isLoading = false;
    update();
  }



  void updatePaymentMethod(String? method, {isUpdate = true}) {
    _paymentMethod = method;
    if(isUpdate){
      update();
    }
  }

}