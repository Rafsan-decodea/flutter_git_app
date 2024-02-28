import 'package:six_cash/features/transaction_money/controllers/bootom_slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/common/widgets/custom_image_widget.dart';


class AvatarWidget extends StatefulWidget {
  final String image;
  const AvatarWidget({ Key? key, required this.image}) : super(key: key);

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  void initState() {
    Get.find<BottomSliderController>().onChangeAnimationStatus();
    Get.find<BottomSliderController>().changeAlignmentValue();
    super.initState();
  }
  @override
  void dispose() {
    Get.find<BottomSliderController>().onChangeAnimationStatus();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(height: 50.0),

        GetBuilder<BottomSliderController>(
            builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Dimensions.radiusSizeOverLarge,
                    height: Dimensions.radiusSizeOverLarge,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(Dimensions.radiusSizeExtraSmall),
                      ),
                      child: CustomImageWidget(
                        fit: BoxFit.cover,
                        image: "${Get.find<SplashController>().configModel!.baseUrls!.customerImageUrl
                        }/${Get.find<ProfileController>().profileModel!.image}",
                        placeholder: Images.avatar,
                      ),
                    ),
                  ),
                  AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      alignment: controller.isRightAlignment
                          ? Alignment.centerRight: Alignment.centerLeft,
                      width: 60.0,
                      child: Image.asset(
                        Images.slideRightIcon, height: 10,
                        width: 10,color: Theme.of(context).textTheme.titleLarge!.color,
                      )
                  ),

                  SizedBox(
                    width: Dimensions.radiusSizeOverLarge,
                    height: Dimensions.radiusSizeOverLarge,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(Dimensions.radiusSizeExtraSmall),
                      ),
                      child: CustomImageWidget(
                        fit: BoxFit.cover,
                        image: widget.image,
                        placeholder: Images.avatar,
                      ),
                    ),
                  ),
                ],
              );
            }
        ),

        const SizedBox(height: 28.0/1.7,),
      ],
    );
  }
}