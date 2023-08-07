import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/screens/sign-up.dart';
import 'package:schoolbusapp/utils.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp()));
      print("changedpage");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // signincdw (114:1720)
        padding: EdgeInsets.fromLTRB(20 * fem, 15 * fem, 20 * fem, 58 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(18 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupn9p3WUR (2TkzTaPcnYrjH2miuRN9P3)
              margin:
                  EdgeInsets.fromLTRB(9.39 * fem, 0 * fem, 3.5 * fem, 58 * fem),
              width: double.infinity,
              height: 20 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // timepV7 (114:1722)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 277.11 * fem, 0 * fem),
                    child: Text(
                      '9:41',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.3333333333 * ffem / fem,
                        color: Color(0xff131313),
                      ),
                    ),
                  ),
                  Container(
                    // container7z1 (114:1723)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 3.16 * fem, 0 * fem, 5.34 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Container(
                        //   // combinedshaperAu (114:1731)
                        //   margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 5*fem, 0*fem),
                        //   width: 17.1*fem,
                        //   height: 10.7*fem,
                        //   child: Image.asset(
                        //     'assets/page-1/images/combined-shape-7kM.png',
                        //     width: 17.1*fem,
                        //     height: 10.7*fem,
                        //   ),
                        // ),
                        // Container(
                        //   // wifiZLD (114:1736)
                        //   margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 5*fem, 0*fem),
                        //   width: 15.4*fem,
                        //   height: 11.06*fem,
                        //   child: Image.asset(
                        //     'assets/page-1/images/wi-fi-GU9.png',
                        //     width: 15.4*fem,
                        //     height: 11.06*fem,
                        //   ),
                        // ),
                        // Container(
                        //   // batteryg9w (114:1724)
                        //   width: 24.5*fem,
                        //   height: 11.5*fem,
                        //   child: Image.asset(
                        //     'assets/page-1/images/battery.png',
                        //     width: 24.5*fem,
                        //     height: 11.5*fem,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // unnamed1removebgpreview1p1F (114:1750)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 133 * fem),
              width: 116 * fem,
              height: 116 * fem,
              child: Image.asset(
                'lib/assets/schoolbus.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // group34026KTo (114:1751)
              margin:
                  EdgeInsets.fromLTRB(81 * fem, 0 * fem, 59 * fem, 101 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // gmail1qww (114:1754)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 21 * fem, 0 * fem),
                    width: 64 * fem,
                    height: 64 * fem,
                    child: Image.asset(
                      'lib/assets/gmail1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // continuewithemailNS5 (114:1753)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
                    child: Text(
                      'Continue with Email',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff1e1d1d),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group338705bP (114:1740)
              margin:
                  EdgeInsets.fromLTRB(1 * fem, 0 * fem, 1.99 * fem, 94.5 * fem),
              width: double.infinity,
              height: 43.5 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // line17oXP (114:1741)
                    left: 0 * fem,
                    top: 20.4650878906 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 385.01 * fem,
                        height: 1 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff888888),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse578Jj3 (114:1742)
                    left: 170.005859375 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 43.5 * fem,
                        height: 43.5 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21.75 * fem),
                            border: Border.all(color: Color(0xff1e1d1d)),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // orD5K (114:1743)
                    left: 182.005859375 * fem,
                    top: 13 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 18 * fem,
                        height: 18 * fem,
                        child: Text(
                          'OR',
                          style: SafeGoogleFont(
                            'Thabit',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xff888888),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame5123915tD (114:1744)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 160 * fem),
              width: double.infinity,
              height: 55 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffcfcfcf)),
                color: Color(0xfffec635),
                borderRadius: BorderRadius.circular(40 * fem),
              ),
              child: Center(
                child: Text(
                  'Sign in with Password',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // group33813XER (114:1746)
              width: 38 * fem,
              height: 8 * fem,
              child: Image.asset(
                'assets/page-1/images/group-33813-Fkm.png',
                width: 38 * fem,
                height: 8 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
