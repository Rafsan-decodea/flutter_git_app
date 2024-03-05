import 'package:six_cash/features/profile/domain/models/profile_model.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/camera_verification/controllers/camera_screen_controller.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/data/api/api_client.dart';
import 'package:six_cash/common/models/response_model.dart';
import 'package:six_cash/features/auth/domain/reposotories/auth_repo.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController implements GetxService{
  final AuthRepo authRepo;
  EditProfileController({required this.authRepo});

  bool _isLoading = false;
  String? _image ;
  String? _gender;
  String? _occupation;

  bool get isLoading => _isLoading;
  String? get image => _image;
  String? get gender => _gender;
  String? get occupation => _occupation;

  void setImage(String image){
    _image = image;
  }

  void setGender(String select){
    _gender = select;
    update();
  }

  void setSelect(String occupation){
    _occupation = occupation;
    update();
  }


  Future<bool> updateProfileData(ProfileModel editProfileBody, List<MultipartBody> multipartBody) async{
    _isLoading = true;
    bool emailValidation = true;
    bool isSuccess = false;
    update();
    Map<String, String> allProfileInfo = {
      'f_name': editProfileBody.fName ?? '',
      'l_name': editProfileBody.lName ?? '',
      'gender': editProfileBody.gender ?? '',
      'occupation': editProfileBody.occupation ?? '',
      '_method': 'put',
    };
    if(editProfileBody.email != '') {
      bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(editProfileBody.email!);

      if(emailValid){
        allProfileInfo.addAll({'email': editProfileBody.email ?? ''});
      }else{
        emailValidation = emailValid;
      }
    }

    if(!emailValidation) {
      showCustomSnackBarHelper('please_provide_valid_email'.tr);
      _isLoading = false;
      update();
    }else {
      Response response = await authRepo.updateProfile(allProfileInfo, multipartBody);
      ResponseModel responseModel;
      if (response.statusCode == 200) {
        responseModel = ResponseModel(true, response.body['message']);
        isSuccess = true;
        if(Get.find<CameraScreenController>().getImage != null) {
          Get.find<CameraScreenController>().removeImage();
        }
        Get.find<ProfileController>().profileData(reload: true);
        Get.back();
        showCustomSnackBarHelper(responseModel.message, isError: false);
      }
      else {
        ApiChecker.checkApi(response);
      }
      _isLoading = false;
      update();
    }
    return isSuccess;
  }



}