
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:six_cash/data/api/api_client.dart';
import 'package:six_cash/util/app_constants.dart';

class TransactionHistoryRepo{
  final ApiClient apiClient;

  TransactionHistoryRepo({required this.apiClient});

  Future<Response> getTransactionHistory(int offset, {String? search}) async {
    return await apiClient.getData('${AppConstants.agentTransactionHistory}?limit=10&offset=$offset${search != null ? '&search=$search' : ''}');
  }
}