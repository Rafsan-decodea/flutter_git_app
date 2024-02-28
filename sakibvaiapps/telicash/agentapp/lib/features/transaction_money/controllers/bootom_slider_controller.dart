import 'package:six_cash/helper/route_helper.dart';
import 'package:get/get.dart';

import '../../profile/controllers/profile_screen_controller.dart';

class BottomSliderController extends GetxController implements GetxService {
  bool _isPinCompleted = false;
  bool _isRightAlignment = false;
  bool _isAnimationStop = false;
  bool _isLoading = false;
  String? _pin;

  bool get isPinCompleted => _isPinCompleted;
  bool get isRightAlignment => _isRightAlignment;
  bool get isLoading => _isLoading;

  String? get pin => _pin;



  set setIsLoading(bool value){
    _isLoading =  value;
    update();
  }




  void setIsPinCompleted({required bool isCompleted, required bool isNotify}){
    _isPinCompleted =  isCompleted;
    if(isNotify) {
      update();
    }
  }


  void onChangePinCompletedStatus(String value){
    if (value.length==4) {
      _isPinCompleted = true;
      _pin = value;

    }else{
      _isPinCompleted = false;

    }

    update();
  }

  void onChangeAnimationStatus(){
    _isAnimationStop = !_isAnimationStop;
  }

 void resetPinField(){
    _pin = '';
    _isPinCompleted = false;
    update();
    Get.back(closeOverlays: true);
  }

  void changeAlignmentValue(){
    if (_isAnimationStop) {
      Future.delayed(const Duration(seconds: 1)).then((value){
        _isRightAlignment = !_isRightAlignment;
        update();
        changeAlignmentValue();
      });

    }
  }

  void goBackButton(){
    Get.find<ProfileController>().setProfileModel = null;
    _isPinCompleted = false;
    update();
    Get.offAllNamed(RouteHelper.getNavBarRoute(), arguments:  true);
  }

}