import 'package:get/get_connect/http/src/response/response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:six_cash/data/api/api_client.dart';
import 'package:six_cash/util/app_constants.dart';

class TransactionRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  TransactionRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response>  cashInApi({required String? phoneNumber, required double amount, required String? pin }) async {
    return await apiClient.postData(AppConstants.agentCashIn, {'phone': phoneNumber, 'amount': amount, 'pin': pin});
  }

  Future<Response>  requestMoneyApi({ required double amount}) async {
    return await apiClient.postData(AppConstants.agentRequestMoney,  {'amount' : amount});
  }

  Future<Response>  checkCustomerNumber({required String phoneNumber}) async {
    return await apiClient.postData(AppConstants.checkCustomerUri, {'phone' : phoneNumber});
  }
  Future<Response>  checkAgentNumber({required String phoneNumber}) async {
    return await apiClient.postData(AppConstants.checkAgentUri, {'phone' : phoneNumber});
  }

  Future<Response>  withdrawRequest({required Map<String, String?>? placeBody}) async {
    return await apiClient.postData(AppConstants.withdrawRequest, placeBody);
  }

  Future<Response> getWithdrawMethods() async {
    return await apiClient.getData(AppConstants.withdrawMethodList);
  }




}