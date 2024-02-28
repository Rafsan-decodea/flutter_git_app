import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (profileController) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min,
          children: [
            profileController.profileModel != null ?
            Text(
              PriceConverter.convertPrice(profileController.profileModel!.balance),
              style: rubikMedium.copyWith(
                color: Colors.white,
                fontSize: Dimensions.fontSizeExtraLarge,
              ),
            ) : Text(
              PriceConverter.convertPrice(0.0),
              style: rubikMedium.copyWith(
                color: Colors.white,
                fontSize: Dimensions.fontSizeExtraLarge,
              ),
            ),

            const SizedBox(
              height: Dimensions.paddingSizeExtraSmall,
            ),

            Text(
              'available_balance'.tr,
              style: rubikLight.copyWith(
                fontSize: Dimensions.fontSizeDefault,
                color: Colors.white,
              ),
            )
          ],
        );
      }
    );
  }
}
