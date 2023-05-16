import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sakib_school/Utils/colors.dart';


class CustomTextForm extends StatelessWidget {
  TextEditingController? textController;
  double? width;
  double? height; 
  String? hinttext;

  CustomTextForm({super.key, this.hinttext, this.width,this.height, this.textController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100.w,
      height: height ?? 45.h,
      margin: EdgeInsets.only(left: 20.w, right: 20.w),
      decoration: const BoxDecoration(
        color: primaryColor,
      ),
      child: TextFormField(
        controller: textController,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            hintText: hinttext ?? "Enter Data",
            border: InputBorder.none,
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            contentPadding: EdgeInsets.only(left: 10.w)),
      ),
    );
  }
}
