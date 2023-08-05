import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // splashA4h (114:1638)
        padding: EdgeInsets.fromLTRB(22.39*fem, 14*fem, 23.5*fem, 58*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffff8b32),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // statusdefaultblack9aq (114:1643)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 137*fem),
              width: double.infinity,
              height: 20*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // timeS49 (114:1645)
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
                    // containergjB (114:1646)
                    margin: EdgeInsets.fromLTRB(0*fem, 3.16*fem, 0*fem, 5.34*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // combinedshapeyyB (114:1654)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                          width: 17.1*fem,
                          height: 10.7*fem,
                          child: Image.asset(
                            'assets/page-1/images/combined-shape-zZF.png',
                            width: 17.1*fem,
                            height: 10.7*fem,
                          ),
                        ),
                        SizedBox(
                          width: 5*fem,
                        ),
                        Container(
                          // wifivX3 (114:1659)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                          width: 15.4*fem,
                          height: 11.06*fem,
                          child: Image.asset(
                            'assets/page-1/images/wi-fi-qiZ.png',
                            width: 15.4*fem,
                            height: 11.06*fem,
                          ),
                        ),
                        SizedBox(
                          width: 5*fem,
                        ),
                        Container(
                          // battery2a5 (114:1647)
                          width: 24.5*fem,
                          height: 11.5*fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-ct1.png',
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
            Container(
              // unnamed1removebgpreview1wh3 (114:1664)
              margin: EdgeInsets.fromLTRB(1.11*fem, 0*fem, 0*fem, 127*fem),
              width: 314*fem,
              height: 314*fem,
              child: Image.asset(
                'assets/page-1/images/unnamed1-removebg-preview-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // autogrouppuqq2Ch (2TkxuNUvTaaRhv2t79PuQq)
              margin: EdgeInsets.fromLTRB(39.61*fem, 0*fem, 38.5*fem, 43*fem),
              padding: EdgeInsets.fromLTRB(115*fem, 75*fem, 115*fem, 56*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(133*fem),
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/back-school-stationery-education-element-empty-banner-cartoon-yellow-background-3d-illustration-1-bg.png',
                  ),
                ),
              ),
              child: Center(
                // go1UqP (114:1665)
                child: SizedBox(
                  width: 74*fem,
                  height: 74*fem,
                  child: Image.asset(
                    'assets/page-1/images/go-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              // group33813CmP (114:1639)
              margin: EdgeInsets.fromLTRB(1.11*fem, 0*fem, 0*fem, 0*fem),
              width: 38*fem,
              height: 8*fem,
              child: Image.asset(
                'assets/page-1/images/group-33813-YGh.png',
                width: 38*fem,
                height: 8*fem,
              ),
            ),
          ],
        ),
      ),
          );
  }
}