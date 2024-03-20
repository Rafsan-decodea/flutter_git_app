import 'package:get/get.dart';
import 'package:six_cash/common/models/contact_model.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/auth/domain/reposotories/auth_repo.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/transaction_money/domain/models/withdraw_model.dart';
import 'package:six_cash/features/transaction_money/domain/reposotories/transaction_repo.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/util/app_constants.dart';

class TransactionMoneyController extends GetxController implements GetxService {
  final TransactionRepo transactionRepo;
  final AuthRepo authRepo;

  TransactionMoneyController({
    required this.transactionRepo,
    required this.authRepo,
  });

  List<String> inputAmountList =  AppConstants.inputAmountList;
  int? _selectAmount;
  WithdrawModel? _withdrawModel;



  int? get selectAmount => _selectAmount;

  void selectAmountSet(int? value) {
    _selectAmount = value;
    update(['inputAmountListController']);
  }


  bool _isLoading = false;

  bool _isNextBottomSheet = false;

  bool get isLoading => _isLoading;
  bool get isNextBottomSheet => _isNextBottomSheet;
  WithdrawModel? get withdrawModel => _withdrawModel;


  Future<Response> cashIn({required ContactModel contactModel, required double amount, String? pinCode})async{
    _isLoading = true;
    _isNextBottomSheet = false;
    update();
   Response response = await transactionRepo.cashInApi(phoneNumber: contactModel.phoneNumber, amount: amount, pin: pinCode);
   if(response.statusCode == 200){
     _isLoading = false;
     _isNextBottomSheet = true;

   }else{
     _isLoading = false;
     ApiChecker.checkApi(response);
   }
   update();
   return response;
  }

  Future<void> requestMoney({ required double amount})async{
    _isLoading = true;
    update(['inout_screen_button_id']);
    Response response = await transactionRepo.requestMoneyApi(amount: amount);
    if(response.statusCode == 200){
      Get.back();
      showCustomSnackBarHelper('request_send_successful'.tr, isError: false);
    }else{
      showCustomSnackBarHelper(response.statusText, isError: true);
    }
    _isLoading = false;
    update(['inout_screen_button_id']);
  }


  Future<void> withDrawRequest({Map<String, String?>? placeBody})async{
    _isLoading = true;
    Response response = await transactionRepo.withdrawRequest(placeBody: placeBody);
    if(response.statusCode == 200 && response.body['response_code'] == 'default_store_200'){
      Get.offAllNamed(RouteHelper.getNavBarRoute());
      showCustomSnackBarHelper('request_send_successful'.tr, isError: false);
      Get.find<ProfileController>().profileData(reload: true);
    }else{
      showCustomSnackBarHelper(response.body['message'] ?? 'error', isError: true);
    }
    _isLoading = false;
    update();

  }


  Future<Response> checkCustomerNumber({required String phoneNumber})async{
    _isLoading = true;
    update(['inout_screen_button_id']);
    Response response = await transactionRepo.checkCustomerNumber(phoneNumber: phoneNumber);
    if(response.statusCode == 200){

    }else{

      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    update();
    return response;
  }

  void changeTrueFalse(){
    _isNextBottomSheet = false;
  }

  Future<bool> pinVerify({required String pin})async{
    bool isVerify = false;
    _isLoading = true;
     update();
    final Response response =  await authRepo.pinVerifyApi(pin: pin);
    if(response.statusCode == 200){
      isVerify = true;
      _isLoading = false;
    }else{
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    update();
    return isVerify;
  }

  Future<void> getWithdrawMethods({bool isReload = false}) async{
    if(_withdrawModel == null || isReload) {
      Response response = await transactionRepo.getWithdrawMethods();

      if(response.statusCode == 200 && response.body['response_code'] == 'default_200'){
        _withdrawModel = WithdrawModel.fromJson(response.body);
      }else{
        _withdrawModel = WithdrawModel(withdrawalMethods: [],);
        ApiChecker.checkApi(response);
      }

    }

    update();
  }





}