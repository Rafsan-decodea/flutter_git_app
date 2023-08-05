import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 359;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // group365mzq (114:2794)
        width: double.infinity,
        height: 20*fem,
        child: Container(
          // group34028iQH (114:2795)
          width: double.infinity,
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // recentf4d (114:2796)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 97*fem, 0*fem),
                child: Text(
                  'Recent',
                  style: SafeGoogleFont (
                    'Poppins',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w900,
                    height: 1.25*ffem/fem,
                    letterSpacing: 0.5*fem,
                    color: Color(0xff0d6efd),
                  ),
                ),
              ),
              Container(
                // earlier9Vb (114:2797)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 60*fem, 0*fem),
                child: Text(
                  'Earlier',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Poppins',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.25*ffem/fem,
                    letterSpacing: 0.5*fem,
                    color: Color(0xff1b1e28),
                  ),
                ),
              ),
              Text(
                // archieved3qs (114:2798)
                'Archieved',
                textAlign: TextAlign.right,
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 16*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.25*ffem/fem,
                  letterSpacing: 0.5*fem,
                  color: Color(0xff1b1e28),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}