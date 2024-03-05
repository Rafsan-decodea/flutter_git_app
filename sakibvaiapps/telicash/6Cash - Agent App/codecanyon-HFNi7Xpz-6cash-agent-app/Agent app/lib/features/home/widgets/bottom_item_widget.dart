import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:six_cash/features/home/controllers/menu_controller.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';

class BottomItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String name;
  final int selectedIndex;
  const BottomItemWidget({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.selectedIndex,
    required this.name,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap, child: Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        height: Dimensions.paddingSizeLarge,
        width: Dimensions.paddingSizeLarge,
        child: Image.asset(
          icon, fit: BoxFit.contain,
          color: Get.find<MenuItemController>().getCurrentIndex == selectedIndex
              ? Theme.of(context).textTheme.titleLarge!.color
              : ColorResources.nevDefaultColor,
        ),
      ),
      const SizedBox(height: 6.0),

      Text(name, style: TextStyle(
        color: Get.find<MenuItemController>().getCurrentIndex == selectedIndex
            ? Theme.of(context).textTheme.titleLarge?.color
            : ColorResources.nevDefaultColor,
        fontSize: Dimensions.fontSizeSmall,
        fontWeight: FontWeight.w400,
      )),

    ]));
  }
}
