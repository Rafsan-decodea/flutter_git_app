import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 153;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // welcometoRCM (114:1879)
        width: double.infinity,
        height: 36*fem,
        child: Text(
          'Welcome to ',
          style: SafeGoogleFont (
            'Poppins',
            fontSize: 24*ffem,
            fontWeight: FontWeight.w700,
            height: 1.5*ffem/fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
          );
  }
}