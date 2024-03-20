import 'dart:io';
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/util/app_constants.dart';

class ScreenShootWidgetController extends GetxController implements GetxService{
  ScreenshotController statementController = ScreenshotController();
  bool _isLoading = false;
  bool _isShare = false;

  bool get isLoading => _isLoading;
  bool get isShare => _isShare;

  Future shareStatementScreenshot({required Widget child}) async{
    Uint8List? image;
    _isLoading = true;
    update();
    image =  await statementController.captureFromWidget(child, context: Get.context);

    final directory = await getApplicationDocumentsDirectory();
    final imageFile = File('${directory.path}/share.png');
    imageFile.writeAsBytesSync(image);
    await Share.shareXFiles([XFile(imageFile.path)]);

    _isLoading = false;
    update();

  }


  Future<void> downloadOrShareQrcodeScreenshot({required Widget child, required bool isShare}) async{
    _isLoading = true;
    _isShare = isShare;
    update();

    Uint8List? image =  await statementController.captureFromWidget(child, context: Get.context);

    Navigator.pop(Get.context!);

    if(isShare){
      final directory = await getApplicationDocumentsDirectory();
      final imageFile = File('${directory.path}/share.png');
      imageFile.writeAsBytesSync(image);
      await Share.shareXFiles([XFile(imageFile.path)]);

    }else{
      final directory = await getApplicationDocumentsDirectory();
      final imageFile = File('${directory.path}/qr.png');
      imageFile.writeAsBytesSync(image);
      await GallerySaver.saveImage(imageFile.path,albumName: AppConstants.appName).then((value) => showCustomSnackBarHelper('QR code save to your Gallery',isError: false));
    }

    _isLoading = false;
    update();
  }

}