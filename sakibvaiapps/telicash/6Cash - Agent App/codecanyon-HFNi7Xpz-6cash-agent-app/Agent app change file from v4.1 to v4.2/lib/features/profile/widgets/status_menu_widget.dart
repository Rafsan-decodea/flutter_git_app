import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';
import 'package:six_cash/features/profile/widgets/confirm_pin_widget.dart';

import '../../auth/controllers/auth_controller.dart';

class StatusMenuWidget extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final bool isAuth;
  const StatusMenuWidget({Key? key,
    this.title, this.leading, this.isAuth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

    return GetBuilder<ProfileController>(
      builder: (profileController) {
        return CustomInkWellWidget(
          onTap: () => Get.defaultDialog(barrierDismissible: false, title: '4digit_pin'.tr, content: ConfirmPinWidget(
            callBack: isAuth ? authController.setBiometric : profileController.onTapTwoFactor, isAuth: isAuth,
          ),),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeSmall,horizontal: Dimensions.paddingSizeDefault),
            child: Row(children: [
              leading!,
              const SizedBox(width: Dimensions.paddingSizeDefault),
              Text(title!,style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeLarge)),
              const Spacer(),
              GetBuilder<AuthController>(builder: (authController) {
                return GetBuilder<ProfileController>(builder: (profController) {
                  bool isStatusOn;

                  if(isAuth) {
                    isStatusOn = (authController.biometric && authController.bioList.isNotEmpty);
                  }else{
                    isStatusOn = profController.profileModel?.twoFactor ?? false;
                  }

                  return profController.isLoading ? Center(child: Text('off'.tr)) : Text((isStatusOn) ? 'on'.tr : 'off'.tr);

                });
              })],
            ),
          ),

        );
      }
    );
  }
}



