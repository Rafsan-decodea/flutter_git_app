import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/screens/login.dart';
import 'package:schoolbusapp/utils.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
        // signupG5P (114:1792)
        padding: EdgeInsets.fromLTRB(20 * fem, 14 * fem, 20 * fem, 58 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(18 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupd7wd9Q5 (2Tm1V3gXQC88uohg3vD7WD)
              margin:
                  EdgeInsets.fromLTRB(12.5 * fem, 0 * fem, 3.5 * fem, 53 * fem),
              width: double.infinity,
              height: 20 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // timeUBT (114:1852)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 274 * fem, 0 * fem),
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
                    // containerytu (114:1793)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 4.16 * fem, 0 * fem, 4.34 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // combinedshapeunZ (114:1801)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.08 * fem, 0 * fem, 0 * fem),
                          width: 17.1 * fem,
                          height: 10.7 * fem,
                          child: Image.asset(
                            'assets/page-1/images/combined-shape-N8H.png',
                            width: 17.1 * fem,
                            height: 10.7 * fem,
                          ),
                        ),
                        SizedBox(
                          width: 5 * fem,
                        ),
                        Container(
                          // wifiQUR (114:1806)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.04 * fem, 0 * fem, 0 * fem),
                          width: 15.4 * fem,
                          height: 11.06 * fem,
                          child: Image.asset(
                            'assets/page-1/images/wi-fi-6C9.png',
                            width: 15.4 * fem,
                            height: 11.06 * fem,
                          ),
                        ),
                        SizedBox(
                          width: 5 * fem,
                        ),
                        Container(
                          // batteryJph (114:1794)
                          width: 24.5 * fem,
                          height: 11.5 * fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-HER.png',
                            width: 24.5 * fem,
                            height: 11.5 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // unnamed1removebgpreview2Svu (114:1850)
              margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 103 * fem),
              width: 116 * fem,
              height: 116 * fem,
              child: Image.asset(
                'lib/assets/schoolbus.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Container(
                  // frame512392A6D (114:1810)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
                  padding: EdgeInsets.fromLTRB(
                      16 * fem, 17.5 * fem, 16 * fem, 17.5 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffcfcfcf)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Text(
                    'Melisa22@gmail.com',
                    style: SafeGoogleFont(
                      'Thabit',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575 * ffem / fem,
                      color: Color(0xff1e1d1d),
                    ),
                  ),
                ),
                Container(
                  // frame512392A6D (114:1810)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
                  padding: EdgeInsets.fromLTRB(
                      16 * fem, 17.5 * fem, 16 * fem, 17.5 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffcfcfcf)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Text(
                    'Melisa22@gmail.com',
                    style: SafeGoogleFont(
                      'Thabit',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575 * ffem / fem,
                      color: Color(0xff1e1d1d),
                    ),
                  ),
                ),
              ],
            ),

            // Container(
            //   // autogroupv5lzQWM (2Tm1sNNfTB15vT37Tjv5LZ)
            //   margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
            //   width: 388 * fem,
            //   height: 55 * fem,
            //   child: Image.asset(
            //     'assets/page-1/images/auto-group-v5lz.png',
            //     width: 388 * fem,
            //     height: 55 * fem,
            //   ),
            // ),
            Container(
              // group339157ff (114:1819)
              margin:
                  EdgeInsets.fromLTRB(132 * fem, 0 * fem, 151 * fem, 72 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // vectorShw (114:1821)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 0 * fem),
                    width: 20 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-kUH.png',
                      width: 20 * fem,
                      height: 21 * fem,
                    ),
                  ),
                  Container(
                    // remenbermeAP3 (114:1820)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Remenber me',
                      style: SafeGoogleFont(
                        'Thabit',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.7150000059 * ffem / fem,
                        color: Color(0xff1e5fff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame5123884UR (114:1812)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
              width: double.infinity,
              height: 55 * fem,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffcfcfcf)),
                color: Color(0xfffec635),
                borderRadius: BorderRadius.circular(40 * fem),
              ),
              child: Center(
                child: Text(
                  'Sign up',
                  style: SafeGoogleFont(
                    'Thabit',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2575 * ffem / fem,
                    color: Color(0xff131313),
                  ),
                ),
              ),
            ),
            Container(
              // group33870Xcu (114:1815)
              margin:
                  EdgeInsets.fromLTRB(1 * fem, 0 * fem, 1.99 * fem, 35 * fem),
              width: double.infinity,
              height: 43.5 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // line174Mw (114:1816)
                    left: 0 * fem,
                    top: 20.4650878906 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 385.01 * fem,
                        height: 1 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse578AQy (114:1817)
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
                    // withf6q (114:1818)
                    left: 177 * fem,
                    top: 13 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 27 * fem,
                        height: 18 * fem,
                        child: Text(
                          'With',
                          style: SafeGoogleFont(
                            'Thabit',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34003YgR (114:1841)
              margin: EdgeInsets.fromLTRB(
                  113 * fem, 0 * fem, 113 * fem, 28.66 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   // vectorGsK (114:1842)
                  //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.84*fem),
                  //   width: 32*fem,
                  //   height: 32*fem,
                  //   child: Image.asset(
                  //     'assets/page-1/images/vector-oxd.png',
                  //     width: 32*fem,
                  //     height: 32*fem,
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 32*fem,
                  // ),
                  // Container(
                  //   // vectoryWq (114:1843)
                  //   margin: EdgeInsets.fromLTRB(0*fem, 2.16*fem, 0*fem, 0*fem),
                  //   width: 34*fem,
                  //   height: 28*fem,
                  //   child: Image.asset(
                  //     'assets/page-1/images/vector-jQd.png',
                  //     width: 34*fem,
                  //     height: 28*fem,
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 32*fem,
                  // ),
                  // Container(
                  //   // group340026LZ (114:1844)
                  //   margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                  //   width: 32*fem,
                  //   height: 31.84*fem,
                  //   child: Image.asset(
                  //     'assets/page-1/images/group-34002.png',
                  //     width: 32*fem,
                  //     height: 31.84*fem,
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              // bysigningupyouagreetothetermsa (114:1814)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 81 * fem),
              child: Text(
                'By signing up you agree to the terms and conditions.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Thabit',
                  fontSize: 13 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2575 * ffem / fem,
                  color: Color(0xff1e1d1d),
                ),
              ),
            ),
            Container(
              // group33813W9P (114:1837)
              width: 38 * fem,
              height: 8 * fem,
              child: Image.asset(
                'assets/page-1/images/group-33813-JJm.png',
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
