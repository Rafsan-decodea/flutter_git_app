import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 38;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // group3381375s (114:1854)
        width: double.infinity,
        child: Image.asset(
          'assets/page-1/images/group-33813-i2d.png',
          width: 38*fem,
          height: 8*fem,
        ),
      ),
          );
  }
}