import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:six_cash/common/enums/hero_tag_enum.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/helper/tween_helper.dart';
import 'package:six_cash/util/dimensions.dart';


class QrCodePopupWidget extends StatelessWidget {
  final String qrCode;
  const QrCodePopupWidget({Key? key, required this.qrCode}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: HeroTag.qrCode,
          createRectTween: (begin, end) {
            return TweenHelper(begin: begin, end: end);
          },
          child: Material(
            color: Colors.white, elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
              child: GetBuilder<ProfileController>(
                builder: (controller) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.8,
                    child: SvgPicture.string(
                      qrCode,
                      fit: BoxFit.contain,
                      width: size.width * 0.8,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
