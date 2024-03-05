import 'package:get/get.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/history/domain/models/transaction_model.dart';
import 'package:six_cash/features/history/domain/reposotories/transaction_history_repo.dart';

class TransactionHistoryController extends GetxController implements GetxService{
  final TransactionHistoryRepo transactionHistoryRepo;
  TransactionHistoryController({required this.transactionHistoryRepo});


  bool _isLoading = false;
  TransactionModel? _transactionModel;
  int _transactionTypeIndex = 0;
  String? _searchText;

  TransactionModel? get transactionModel => _transactionModel;
  bool get isLoading => _isLoading;
  int get transactionTypeIndex => _transactionTypeIndex;
  String? get searchText => _searchText;

  set setSearchText(String? value)=> _searchText = value;


  void showBottomLoader() {
    _isLoading = true;
    update();
  }
  void updateTab() {
    update(['transaction_tab']);
  }

  Future<void> getTransactionList(int offset, {int? limit = 10, bool isUpdate = true}) async {

    if(offset == 1) {
      _transactionModel = null;

      if(isUpdate) {
        update();
      }
    }

    Response response = await transactionHistoryRepo.getTransactionHistory(offset, search: _searchText);

    if(response.statusCode == 200 && response.body != null) {

      if(offset == 1) {
        _transactionModel = TransactionModel.fromJson(response.body);

      }else{
        _transactionModel?.totalSize = TransactionModel.fromJson(response.body).totalSize;
        _transactionModel?.offset = TransactionModel.fromJson(response.body).offset;
        _transactionModel?.transactions?.addAll(TransactionModel.fromJson(response.body).transactions ?? []);

      }
    }else {
      ApiChecker.checkApi(response);
    }

    _isLoading = false;
    update();


  }


  void setIndex(int index) {
    _transactionTypeIndex = index;
    update();
  }

}