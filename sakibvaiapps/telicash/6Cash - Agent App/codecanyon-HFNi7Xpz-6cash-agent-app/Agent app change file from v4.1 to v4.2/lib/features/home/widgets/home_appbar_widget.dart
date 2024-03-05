import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:six_cash/common/enums/hero_tag_enum.dart';
import 'package:six_cash/features/home/controllers/menu_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/home/domain/enums/navbar_type_enum.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/common/widgets/custom_image_widget.dart';
import 'package:six_cash/helper/tween_helper.dart';
import 'package:six_cash/common/widgets/hero_dialogue_route_widget.dart';
import 'package:six_cash/common/widgets/qr_code_popup_widget.dart';
import 'package:six_cash/features/home/widgets/balance_widget.dart';


class HomeAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (profileController) {
        return Container(
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: const EdgeInsets.only(
              top: 54, left: Dimensions.paddingSizeLarge,
              right: Dimensions.paddingSizeLarge,
              bottom: Dimensions.paddingSizeSmall,
            ),

            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(Dimensions.radiusSizeExtraLarge),
              ),
            ),


            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.find<MenuItemController>().updateNavbarScreen(NavbarType.profileScreen),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: Dimensions.radiusSizeOverLarge,
                    width: Dimensions.radiusSizeOverLarge,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: profileController.profileModel == null ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(Images.avatar,fit: BoxFit.cover),
                        ),
                      ) : CustomImageWidget(
                        image: '${Get.find<SplashController>().configModel!.baseUrls!.agentImageUrl}/${profileController.profileModel!.image ?? ''}',
                        fit: BoxFit.cover,
                        placeholder: Images.avatar,
                      ),

                    ),
                  ),
                ),
                const SizedBox(width: Dimensions.paddingSizeSmall),

                const BalanceWidget(),
                const Spacer(),

                if(profileController.profileModel?.qrCode != null) GestureDetector(
                  onTap: () => Navigator.of(context).push(HeroDialogRouteWidget(builder:(_) => QrCodePopupWidget(
                    qrCode: profileController.profileModel!.qrCode!,
                  ))),

                  child: Hero(
                    tag: HeroTag.qrCode,
                    createRectTween: (begin, end) => TweenHelper(begin: begin, end: end),

                    child: Container(
                      width: Get.width * 0.11,
                      height: Get.width * 0.11,
                      padding: EdgeInsets.all(Get.width * 0.025),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Theme.of(context).cardColor,
                      ),
                      child: profileController.profileModel != null ? SvgPicture.string(
                        profileController.profileModel!.qrCode!,
                        height: Dimensions.paddingSizeLarge,
                        width: Dimensions.paddingSizeLarge,
                      ) :
                      SizedBox(
                        height: Dimensions.paddingSizeLarge,
                        width: Dimensions.paddingSizeLarge,
                        child: Image.asset(Images.qrCode),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 200);
}
