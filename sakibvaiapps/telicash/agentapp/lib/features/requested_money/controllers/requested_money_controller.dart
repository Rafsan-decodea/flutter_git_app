
import 'package:get/get.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/requested_money/domain/models/requested_money_model.dart';
import 'package:six_cash/features/requested_money/domain/models/withdraw_histroy_model.dart';
import 'package:six_cash/features/requested_money/domain/reposotories/requested_money_repo.dart';
import 'package:six_cash/util/app_constants.dart';


class RequestedMoneyController extends GetxController implements GetxService {
  final RequestedMoneyRepo requestedMoneyRepo;
  RequestedMoneyController({required this.requestedMoneyRepo});



  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<RequestedMoney> _requestedMoneyList = [];
  List<RequestedMoney> get requestedMoneyList => _requestedMoneyList;
  List<RequestedMoney> _pendingRequestedMoneyList =[];
  List<RequestedMoney> get pendingRequestedMoneyList => _pendingRequestedMoneyList;
  List<RequestedMoney> _acceptedRequestedMoneyList =[];
  List<RequestedMoney> get acceptedRequestedMoneyList =>_acceptedRequestedMoneyList;
  List<RequestedMoney> _deniedRequestedMoneyList =[];
  List<RequestedMoney> get deniedRequestedMoneyList => _deniedRequestedMoneyList;
  final int _offset = 1;
  int? _pageSize;
  final List<int> _offsetList = [];
  int get offset => _offset;
  List<int> get offsetList => _offsetList;
  int? get pageSize => _pageSize;

  WithdrawHistoryModel? _withdrawHistoryModel;
  WithdrawHistoryModel? get withdrawHistoryModel => _withdrawHistoryModel;

  List<WithdrawHistory> pendingWithdraw = [];
  List<WithdrawHistory> acceptedWithdraw = [];
  List<WithdrawHistory> deniedWithdraw = [];
  List<WithdrawHistory> allWithdraw = [];

  RequestedMoneyModel? requestedMoneyModel;

  Future getRequestedMoneyList({bool reload = false}) async{
    if(reload || requestedMoneyModel == null) {
      requestedMoneyModel = null;
      _isLoading = true;
    }

    if(requestedMoneyModel == null){
      Response response = await requestedMoneyRepo.getRequestedMoneyList();

      if(response.statusCode == 200 && response.body['requested_money'] != null){
        _requestedMoneyList =[];
        _pendingRequestedMoneyList =[];
        _acceptedRequestedMoneyList =[];
        _deniedRequestedMoneyList =[];

        requestedMoneyModel = RequestedMoneyModel.fromJson(response.body);


        requestedMoneyModel?.requestedMoney?.forEach((requested) {
          if(requested.type == AppConstants.approved){
            _acceptedRequestedMoneyList.add(requested);
          }else if(requested.type == AppConstants.pending){
            _pendingRequestedMoneyList.add(requested);
          }else if(requested.type == AppConstants.denied){
            _deniedRequestedMoneyList.add(requested);
          }
          _requestedMoneyList.add(requested);

        });
      }else {
        ApiChecker.checkApi(response);
      }
      _isLoading = false;
      update();
    }

  }



  int _requestTypeIndex = 0;
  int get requestTypeIndex => _requestTypeIndex;

  void setIndex(int index, {bool isUpdate = true}) {
    _requestTypeIndex = index;
    if(isUpdate){
      update();
    }

  }
  void showBottomLoader() {
    _isLoading = true;
    update();
  }

  Future getWithdrawHistoryList({bool reload = false}) async{

    if(reload || _withdrawHistoryModel == null) {
      _withdrawHistoryModel = null;
    }

    if(_withdrawHistoryModel == null) {
      Response response = await requestedMoneyRepo.getWithdrawRequest();
      if(response.body['response_code'] == 'default_200' && response.body['content'] != null){

        pendingWithdraw = [];
        acceptedWithdraw = [];
        deniedWithdraw = [];
        allWithdraw = [];

        _withdrawHistoryModel = WithdrawHistoryModel.fromJson(response.body);
        for (var withdrawHistory in _withdrawHistoryModel!.withdrawHistoryList) {

          pendingWithdraw.addIf(withdrawHistory.requestStatus == AppConstants.pending, withdrawHistory);
          acceptedWithdraw.addIf(withdrawHistory.requestStatus == AppConstants.approved, withdrawHistory);
          deniedWithdraw.addIf(withdrawHistory.requestStatus == AppConstants.denied, withdrawHistory);
          allWithdraw.add(withdrawHistory);
        }

      }
      else{
        ApiChecker.checkApi(response);
      }

    }
    _isLoading = false;
    update();

  }

}