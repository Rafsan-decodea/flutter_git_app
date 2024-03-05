import 'package:get/get.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).canvasColor,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.paddingSizeDefault,
              top: 30.0, bottom: 8.0,
              right: Dimensions.paddingSizeDefault,
            ),

            child: Text(title,style: rubikMedium.copyWith(
              fontSize: Dimensions.fontSizeLarge,
              color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(Get.isDarkMode ? 0.8 :0.5),
            )),
          ),
        ),

        Divider(
          height: Dimensions.dividerSizeSmall,
          color: Theme.of(context).hintColor.withOpacity(0.1),
        ),

      ],
    );
  }
}