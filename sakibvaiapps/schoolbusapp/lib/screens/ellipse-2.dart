import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/utils.dart';
class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 113;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // ellipse2tuw (114:3009)
        width: double.infinity,
        height: 113*fem,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(56.5*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/ellipse-2-bg-BCu.png',
            ),
          ),
        ),
      ),
          );
  }
}