import 'dart:convert';

import 'package:get/get.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:six_cash/features/transaction_money/screens/balance_input_screen.dart';

class QrCodeScannerController extends GetxController implements GetxService{
  final bool _canProcess = true;
  bool _isBusy = false;
  bool _isDetect = false;

  String? _name;
  String? _phone;
  String? _type;
  String? _image;

  String? get name => _name;
  String? get phone => _phone;
  String? get type => _type;
  String? get image => _image;
  String? _transactionType;
  String? get transactionType => _transactionType;

  void setValue(){
    _isDetect = false;
    _phone = '';
  }



  Future<void> processImage(InputImage inputImage, bool isHome, String? transactionType) async {
    final BarcodeScanner barcodeScanner = BarcodeScanner();
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;

    final barcodes = await barcodeScanner.processImage(inputImage);
    if (inputImage.inputImageData?.size != null &&
        inputImage.inputImageData?.imageRotation != null) {
      for (final barcode in barcodes) {
        _name = jsonDecode(barcode.rawValue!)['name'];
        _phone = jsonDecode(barcode.rawValue!)['phone'];
        _type = jsonDecode(barcode.rawValue!)['type'];
        _image = jsonDecode(barcode.rawValue!)['image'];

        if(_name != null && _phone != null && _type != null && _image != null) {
          if(!_isDetect) {
           Get.off(()=> BalanceInputScreen(transactionType: transactionType, transactionNumber: _phone));
          }
          _isDetect = true;


        }
      }

    } else {
    }
    _isBusy = false;
  }


}