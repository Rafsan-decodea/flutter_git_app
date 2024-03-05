import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/home/domain/models/banner_model.dart';
import 'package:six_cash/features/home/domain/reposotories/banner_repo.dart';
import 'package:get/get.dart';

class BannerController extends GetxController implements GetxService {
  final BannerRepo bannerRepo;
  BannerController({required this.bannerRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<BannerModel>? _bannerList;
  List<BannerModel>? get bannerList => _bannerList;


  Future getBannerList(bool reload)async{
    if(_bannerList == null || reload) {
      _isLoading = true;
      _bannerList = null;
    }
    if(_bannerList == null){

      Response response = await bannerRepo.getBannerList();
      if(response.statusCode == 200){
        _bannerList = [];
        response.body.forEach((banner) {
          _bannerList?.add(BannerModel.fromJson(banner));
        });
        _isLoading = false;
      }else{
        _bannerList = [];
        ApiChecker.checkApi(response);
      }
    }

    update();
  }


  int _activeIndex = 0;
  int get getActiveIndex => _activeIndex;

  void updateActiveIndex(int index) {
    _activeIndex = index;
    update();
  }
}