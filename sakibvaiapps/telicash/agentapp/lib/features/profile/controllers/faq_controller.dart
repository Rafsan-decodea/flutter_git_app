import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/profile/domain/models/faq_model.dart';
import 'package:six_cash/features/profile/domain/reposotories/faq_repo.dart';
import 'package:get/get.dart';

class FaqController extends GetxController implements GetxService {
  final FaqRepo faqRepo;
  FaqController({required this.faqRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<HelpTopic>? _helpTopics;
  List<HelpTopic>? get helpTopics => _helpTopics;


  Future getFaqList() async{
    _isLoading = true;
    _helpTopics = [];
    Response response = await faqRepo.getFaqList();
    if(response.body != null && response.body != {} && response.statusCode == 200){
      _helpTopics =  FaqModel.fromJson(response.body).helpTopics;
      _isLoading = false;
      update();
    }else{
      ApiChecker.checkApi(response);
    }
  }
}