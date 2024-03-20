
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/home/domain/models/websitelink_model.dart';
import 'package:six_cash/features/home/domain/reposotories/websitelink_repo.dart';
import 'package:get/get.dart';

class WebsiteLinkController extends GetxController implements GetxService{
  final WebsiteLinkRepo websiteLinkRepo;
  WebsiteLinkController({required this.websiteLinkRepo});
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<WebsiteLinkModel>? _websiteList;
  List<WebsiteLinkModel>? get websiteList => _websiteList;

  Future getWebsiteList({bool reload = false})async{
    if(reload || (_websiteList == null)) {
      _websiteList = null;
    }
    if(_websiteList == null ) {
      _isLoading = true;
      _websiteList = [];
      Response response = await websiteLinkRepo.getWebsiteListApi();
      if(response.body != null && response.statusCode == 200){
        _websiteList = [];
        response.body.forEach((website) {
          _websiteList!.add(WebsiteLinkModel.fromJson(website));
        });
      }else{
        ApiChecker.checkApi(response);

      }
      _isLoading = false;
      update();

    }


  }

  }