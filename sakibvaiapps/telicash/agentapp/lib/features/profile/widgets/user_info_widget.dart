import 'package:shimmer/shimmer.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/profile/domain/models/profile_model.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_image_widget.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';
import 'package:six_cash/features/key_verificaiton/screens/kyc_verify_screen.dart';
import 'package:six_cash/features/profile/widgets/qr_code_bottomsheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<ProfileController>(
      builder: (profileController) => profileController.isLoading ? const _ProfileShimmer() : Container(
        color: Theme.of(context).cardColor,
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.paddingSizeLarge,
          vertical: Dimensions.paddingSizeLarge,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                profileController.profileModel != null?
                Row(
                  children: [
                    Container(
                      width: Dimensions.radiusSizeOverLarge,
                      height: Dimensions.radiusSizeOverLarge,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(Dimensions.radiusProfileAvatar)),
                        border: Border.all(width: 1, color: Theme.of(context).highlightColor),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(Dimensions.radiusProfileAvatar)),
                        child: CustomImageWidget(
                          fit: BoxFit.cover,
                          image: "${Get.find<SplashController>().configModel!.baseUrls!.agentImageUrl}/${
                              profileController.profileModel!.image}",
                          placeholder: Images.avatar,
                        ),
                      ),
                    ),
                    const SizedBox(width: Dimensions.paddingSizeSmall),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            '${profileController.profileModel!.fName} ${profileController.profileModel!.lName}',
                            style: rubikMedium.copyWith(
                              color: Theme.of(context).textTheme.bodyLarge!.color,
                              fontSize: Dimensions.fontSizeLarge,
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 1, overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        SizedBox(
                          child: Text(
                            '${profileController.profileModel?.phone}',
                            style: rubikMedium.copyWith(
                              color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(Get.isDarkMode ? 0.8 :0.5),
                              fontSize: Dimensions.fontSizeLarge,
                            ),
                            textAlign: TextAlign.start, maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ],
                    ),
                  ],
                ):const SizedBox(),

                InkWell(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    isDismissible: false,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(Dimensions.radiusSizeLarge)),
                    ),
                    builder: (context) => const QRCodeBottomSheetWidget(),
                  ),
                  child: GetBuilder<ProfileController>(builder: (controller) {
                    return Container(
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).secondaryHeaderColor),
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.string(controller.profileModel!.qrCode!, height: 24, width: 24,),
                    );
                  }),
                )
              ],
            ),


            const SizedBox(height: Dimensions.paddingSizeExtraSmall),

            if(profileController.profileModel!.kycStatus != KycVerification.approve) Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    profileController.profileModel!.kycStatus == KycVerification.needApply ?
                    'kyc_verification_is_not'.tr : profileController.profileModel!.kycStatus == KycVerification.pending ?
                    'your_verification_request_is'.tr : 'your_verification_is_denied'.tr,
                    style: rubikRegular.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
                    maxLines: 2,

                  ),
                ),
                const SizedBox(width: Dimensions.paddingSizeDefault,),

                CustomInkWellWidget(
                  onTap: () => Get.to(()=> const KycVerifyScreen()),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeDefault,
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
                      color: Theme.of(context).colorScheme.error.withOpacity(0.8),
                    ),
                    child: Text(
                      profileController.profileModel!.kycStatus == KycVerification.needApply ?
                      'click_to_verify'.tr : profileController.profileModel!.kycStatus == KycVerification.pending ?
                      'edit'.tr : 're_apply'.tr,
                      style: rubikMedium.copyWith(color: Theme.of(context).cardColor),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class _ProfileShimmer extends StatelessWidget {
  const _ProfileShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).cardColor,
      child: Shimmer.fromColors(baseColor: ColorResources.shimmerBaseColor!, highlightColor:  ColorResources.shimmerLightColor!,
        child : Container(

          padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall, vertical: Dimensions.paddingSizeDefault),
          child: ListTile(
            leading: const CircleAvatar(maxRadius: Dimensions.radiusProfileAvatar),

            title:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(color: Colors.red, height: Dimensions.paddingSizeSmall, width: size.width * 0.3),
                const SizedBox(height: Dimensions.paddingSizeExtraSmall),
                Container(color: Colors.red, height: Dimensions.paddingSizeExtraSmall, width: size.width * 0.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
