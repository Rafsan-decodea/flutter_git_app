
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:six_cash/data/api/api_checker.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';

void showCustomSnackBarHelper(String? message, {bool isError = true, bool isIcon = false, bool isVpn = false,}) {
  if(isVpn) {
    SmartDialog.show(
      onDismiss: () async {
        if(await ApiChecker.isVpnActive()) {
          showCustomSnackBarHelper('', isVpn: true);
        }
      },
      alignment: Alignment.topCenter,
      builder: (_) {
        return Container(
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(Get.context!).colorScheme.error,
          ),
          child: SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Dimensions.paddingSizeSmall,
              horizontal: Dimensions.paddingSizeLarge,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('please_disable_the_vpn'.tr, style: rubikLight.copyWith(color: Colors.white),),

                IconButton(
                  icon: const Icon(Icons.clear,size: 25),
                  color: Colors.white,
                  onPressed: () {
                    SmartDialog.dismiss();
                  },
                ),
              ],
            ),
          )),
        );
      },
    );

  }else{
    if(message != null && message.isNotEmpty){
      Get..closeCurrentSnackbar()..showSnackbar(GetSnackBar(
        message: message,
        snackStyle: SnackStyle.FLOATING,
        duration: const Duration(seconds: 5),
        isDismissible: true,
        backgroundColor: isError ? Colors.red : Colors.green,
        icon: isIcon ?  IconButton(icon: const Icon(Icons.clear,size: 16,),color: Colors.white,
            onPressed: (){
              Get.back();
            }) : null,
      ));
    }
  }
}