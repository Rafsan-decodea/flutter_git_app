import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginUFT (114:1755)
        padding: EdgeInsets.fromLTRB(20*fem, 15*fem, 20*fem, 58*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupseyuAPB (2Tkzxp3uPcoLXwZjwQSEYu)
              margin: EdgeInsets.fromLTRB(6.39*fem, 0*fem, 3.5*fem, 49*fem),
              width: double.infinity,
              height: 20*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // timeVAZ (114:1757)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 280.11*fem, 0*fem),
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
                    // containerC4y (114:1758)
                    margin: EdgeInsets.fromLTRB(0*fem, 3.16*fem, 0*fem, 5.34*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // combinedshapeKfP (114:1766)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 5*fem, 0*fem),
                          width: 17.1*fem,
                          height: 10.7*fem,
                          child: Image.asset(
                            'assets/page-1/images/combined-shape.png',
                            width: 17.1*fem,
                            height: 10.7*fem,
                          ),
                        ),
                        Container(
                          // wifiLqP (114:1771)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 5*fem, 0*fem),
                          width: 15.4*fem,
                          height: 11.06*fem,
                          child: Image.asset(
                            'assets/page-1/images/wi-fi-Fah.png',
                            width: 15.4*fem,
                            height: 11.06*fem,
                          ),
                        ),
                        Container(
                          // batteryFhT (114:1759)
                          width: 24.5*fem,
                          height: 11.5*fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-8ZP.png',
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
              // unnamed1removebgpreview1nBb (114:1787)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 108*fem),
              width: 116*fem,
              height: 116*fem,
              child: Image.asset(
                'assets/page-1/images/unnamed1-removebg-preview-1-djw.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // frame512390Uq7 (114:1775)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 17*fem, 16*fem, 17*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffcfcfcf)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8*fem),
              ),
              child: Text(
                'Email or Mobile',
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.5*ffem/fem,
                  color: Color(0xff636363),
                ),
              ),
            ),
            Container(
              // frame512385L6d (114:1777)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 17*fem, 8*fem, 17*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffcfcfcf)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // passwordEC1 (114:1778)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 273*fem, 0*fem),
                    child: Text(
                      'Password',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5*ffem/fem,
                        color: Color(0xff636363),
                      ),
                    ),
                  ),
                  Container(
                    // group33930x81 (114:1779)
                    width: 22*fem,
                    height: 16*fem,
                    child: Image.asset(
                      'assets/page-1/images/group-33930.png',
                      width: 22*fem,
                      height: 16*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // forgotyourpasswordskm (114:1782)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 69*fem),
              child: Text(
                'Forgot your Password?',
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 13*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.7150000059*ffem/fem,
                  color: Color(0xff1e5fff),
                ),
              ),
            ),
            Container(
              // frame512391n73 (114:1783)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 117*fem),
              width: double.infinity,
              height: 55*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xffcfcfcf)),
                color: Color(0xfffec635),
                borderRadius: BorderRadius.circular(40*fem),
              ),
              child: Center(
                child: Text(
                  'Sign in',
                  style: SafeGoogleFont (
                    'Poppins',
                    fontSize: 14*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.5*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // newinpetrescuesignup44Z (114:1785)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 116*fem),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: SafeGoogleFont (
                    'Thabit',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2958984375*ffem/fem,
                    color: Color(0xff1e1d1d),
                  ),
                  children: [
                    TextSpan(
                      text: 'New in Pet Rescue?',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5*ffem/fem,
                        color: Color(0xff1e1d1d),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5*ffem/fem,
                        color: Color(0xcc1e1d1d),
                      ),
                    ),
                    TextSpan(
                      text: 'Sign Up',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5*ffem/fem,
                        color: Color(0xfff97c36),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // group33813oiH (114:1788)
              width: 38*fem,
              height: 8*fem,
              child: Image.asset(
                'assets/page-1/images/group-33813-4vV.png',
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