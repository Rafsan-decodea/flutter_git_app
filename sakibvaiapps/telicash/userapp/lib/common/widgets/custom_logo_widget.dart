
import 'package:flutter/material.dart';
import 'package:six_cash/util/images.dart';

class CustomLogoWidget extends StatelessWidget {
  final double? height,width;
  const CustomLogoWidget({Key? key,
    this.height,this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(Images.logo),

    );
  }
}
