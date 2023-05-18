import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final Color? color;
  final FontWeight? fontWeight;
  final dynamic size;
  const CustomText(this.title, this.color, this.fontWeight, this.size,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      title!.toString(),
      style: TextStyle(
          color: color ?? Colors.black, fontWeight: fontWeight, fontSize: size),
    );
  }
}
