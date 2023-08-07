import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/utils.dart';
class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 290;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // group34037zo3 (114:2799)
        width: double.infinity,
        height: 211*fem,
        child: Image.asset(
          'assets/page-1/images/group-34037.png',
          width: 290*fem,
          height: 211*fem,
        ),
      ),
          );
  }
}