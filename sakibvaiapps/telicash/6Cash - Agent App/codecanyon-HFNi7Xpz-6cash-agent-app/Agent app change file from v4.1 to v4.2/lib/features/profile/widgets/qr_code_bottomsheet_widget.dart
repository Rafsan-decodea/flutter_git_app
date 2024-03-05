import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/profile/controllers/screen_shot_widget_controller.dart';
import 'package:six_cash/features/profile/domain/models/profile_model.dart';
import 'package:six_cash/features/profile/widgets/qr_code_download_widget.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:six_cash/common/widgets/custom_small_button_widget.dart';


class QRCodeBottomSheetWidget extends StatelessWidget {
  const QRCodeBottomSheetWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final ProfileModel? userInfo = Get.find<ProfileController>().profileModel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8.0,),

        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container( height: 4.0,width: 32.0, decoration: BoxDecoration(color: ColorResources.getGreyBaseGray3(), borderRadius: BorderRadius.circular(32.0)))]
        ),
        const SizedBox(height: Dimensions.paddingSizeLarge),

        Padding(
          padding: const EdgeInsets.only(left: Dimensions.paddingSizeLarge,bottom: Dimensions.paddingSizeSmall),
          child: Text('my_qr_code'.tr,style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeLarge, color: ColorResources.getBlackAndWhite().withOpacity(0.6),)),
        ),

        Center(
          child: Container(
            padding: const EdgeInsets.all(50.0),
            decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).secondaryHeaderColor),
            child: SvgPicture.string(userInfo?.qrCode ?? '', height: size.width * 0.4, width: size.width * 0.4),
          ),
        ),

        const SizedBox(height: 50.0,),

        GetBuilder<ScreenShootWidgetController>(
          builder: (screenshotController) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(child: CustomSmallButtonWidget(
                  isLoading: screenshotController.isLoading && !screenshotController.isShare,
                  text: 'download'.tr,
                  textSize: Dimensions.fontSizeLarge,
                  textColor: Theme.of(context).textTheme.bodyLarge!.color,
                  backgroundColor: Theme.of(context).secondaryHeaderColor,
                  onTap: () => screenshotController.downloadOrShareQrcodeScreenshot(child: QrCodeDownloadWidget(
                    qrCode: userInfo?.qrCode ?? '',
                    phoneNumber: userInfo?.phone ?? '',
                  ), isShare: false),
                )),
                const SizedBox(width: Dimensions.paddingSizeLarge),

                Expanded(child: CustomSmallButtonWidget(
                  isLoading: screenshotController.isLoading && screenshotController.isShare,
                  text: 'share_QR_code'.tr,
                  textSize: Dimensions.fontSizeLarge,
                  textColor: Theme.of(context).cardColor,
                  backgroundColor: Theme.of(context).textTheme.titleLarge!.color,
                  onTap: () => screenshotController.downloadOrShareQrcodeScreenshot(child: QrCodeDownloadWidget(
                    qrCode: userInfo?.qrCode ?? '',
                    phoneNumber: userInfo?.phone ?? '',
                  ), isShare: true),
                )),
              ]),
            );
          }
        ),
      const SizedBox(height: 50.0),




      ],
    );
  }
}