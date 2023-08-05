import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 221;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // trackyourtripig1 (114:1853)
        width: double.infinity,
        height: 71*fem,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: SafeGoogleFont (
              'Poppins',
              fontSize: 46.6885261536*ffem,
              fontWeight: FontWeight.w700,
              height: 1.5*ffem/fem,
              color: Color(0xff313131),
            ),
            children: [
              TextSpan(
                text: 'Track \n',
              ),
              TextSpan(
                text: 'your Trip',
                style: SafeGoogleFont (
                  'Thabit',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2575*ffem/fem,
                  color: Color(0xff313131),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}