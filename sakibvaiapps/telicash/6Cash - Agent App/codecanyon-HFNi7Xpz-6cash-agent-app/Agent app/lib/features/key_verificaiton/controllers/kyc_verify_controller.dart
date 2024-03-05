import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/features/key_verificaiton/domain/reposotories/kyc_verify_repo.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import '../../../data/api/api_client.dart';

class KycVerifyController extends GetxController implements GetxService{
  final KycVerifyRepo kycVerifyRepo;
  KycVerifyController({required this.kycVerifyRepo});


  List <XFile>? _imageFile;
  List<MultipartBody>? _multipartBody;
  List <XFile>_identityImage = [];
  bool _isLoading = false;
  String _dropDownSelectedValue = 'select_identity_type';
  final List<String> _dropList = [
    'select_identity_type',
    'passport',
    'driving_licence',
    'nid',
    'trade_license',
  ];

  List <XFile>? get imageFile => _imageFile;
  List<XFile> get identityImage => _identityImage;
  bool get isLoading => _isLoading;
  List<String> get dropList => _dropList;
  String  get dropDownSelectedValue => _dropDownSelectedValue;



  void onChangeDropdown(String value) {
    _dropDownSelectedValue = value;
    update();
  }

  void onInitSelectDropdown() {
    _dropDownSelectedValue = 'select_identity_type';
    _identityImage = [];
    _isLoading = false;
  }

  void pickImage(bool isRemove) async {
    final ImagePicker picker = ImagePicker();
    if(isRemove) {
      _imageFile = [];
    }else {
      _imageFile = await picker.pickMultiImage(imageQuality: 30);
      if (_imageFile != null) {
        _identityImage.addAll(_imageFile!);
      }
    }
    update();
  }

  void removeImage(int index){
    _identityImage.removeAt(index);
    update();
  }


  Future<void> kycVerify(String idNumber) async{
    Map<String, String> field = {
      'identification_number': idNumber,
      'identification_type': _dropDownSelectedValue,
      '_method': 'put'
    };
    _multipartBody = _identityImage.map((image) => MultipartBody('identification_image[]', File(image.path))).toList();
    _isLoading = true;
    update();
    Response response = await kycVerifyRepo.kycVerifyApi(field, _multipartBody);
    if(response.body['response_code'] == 'default_update_200') {
      Get.back();
      showCustomSnackBarHelper(response.body['message'], isError: false);
    }else{
      ApiChecker.checkApi(response);
    }
    _isLoading = false;
    update();
  }

}