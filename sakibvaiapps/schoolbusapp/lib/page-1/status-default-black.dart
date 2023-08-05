import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 382.1060791016;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // statusdefaultblacktF3 (114:1858)
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // timeS1f (114:1860)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 284.11*fem, 0*fem),
              child: Text(
                '9:41',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 15*ffem,
                  fontWeight: FontWeight.w900,
                  height: 1.3333333333*ffem/fem,
                  color: Color(0xff131313),
                ),
              ),
            ),
            Container(
              // containerXoo (114:1861)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.18*fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // combinedshapesMs (114:1869)
                    margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                    width: 17.1*fem,
                    height: 10.7*fem,
                    child: Image.asset(
                      'assets/page-1/images/combined-shape-TEH.png',
                      width: 17.1*fem,
                      height: 10.7*fem,
                    ),
                  ),
                  SizedBox(
                    width: 5*fem,
                  ),
                  Container(
                    // wifimCM (114:1874)
                    margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                    width: 15.4*fem,
                    height: 11.06*fem,
                    child: Image.asset(
                      'assets/page-1/images/wi-fi-u6H.png',
                      width: 15.4*fem,
                      height: 11.06*fem,
                    ),
                  ),
                  SizedBox(
                    width: 5*fem,
                  ),
                  Container(
                    // batteryrUh (114:1862)
                    width: 24.5*fem,
                    height: 11.5*fem,
                    child: Image.asset(
                      'assets/page-1/images/battery-19K.png',
                      width: 24.5*fem,
                      height: 11.5*fem,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}