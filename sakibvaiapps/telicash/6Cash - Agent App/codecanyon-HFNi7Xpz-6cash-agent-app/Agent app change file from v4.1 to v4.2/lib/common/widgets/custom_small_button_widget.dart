
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';

class CustomSmallButtonWidget extends StatelessWidget {
  final String? text;
  final Function onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final double textSize;
  final bool isLoading;
  const CustomSmallButtonWidget({Key? key,
    this.backgroundColor,
    required this.onTap,
    this.text,
    required this.textColor,
    this.textSize = Dimensions.fontSizeExtraLarge, this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isLoading ? null : onTap as void Function()?,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.paddingSizeDefault),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radiusSizeSmall),
        ),
      ),
      child: isLoading ? Center(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 15, width: 15,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 2,
          ),
        ),
        const SizedBox(width: Dimensions.paddingSizeSmall),

        Text('loading'.tr, style: rubikMedium.copyWith(color: Colors.white)),
      ])) : Text(
        text!,
        style: rubikRegular.copyWith(
          color: textColor,
          fontSize: textSize,
        ),
      ),
    );
  }
  //Dimensions.FONT_SIZE_EXTRA_LARGE
}
