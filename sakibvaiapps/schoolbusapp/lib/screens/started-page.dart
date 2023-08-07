import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/screens/sign-in.dart';
import 'package:schoolbusapp/utils.dart';

class StartPages extends StatefulWidget {
  @override
  State<StartPages> createState() => _StartPagesState();
}

class _StartPagesState extends State<StartPages> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
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
        // startedpage2zd (114:1667)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(18 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupeqw1mBX (2TkyPSWV6DuUf3bLDWeQW1)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 39 * fem),
              width: double.infinity,
              height: 489 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // statusdefaultblackHQm (114:1680)
                    left: 22.3939208984 * fem,
                    top: 14 * fem,
                    child: Container(
                      width: 382.11 * fem,
                      height: 20 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timeyoP (114:1682)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 284.11 * fem, 0 * fem),
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
                            // containerGnV (114:1683)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 3.16 * fem, 0 * fem, 5.34 * fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Container(
                                //   // combinedshapeoGd (114:1691)
                                //   margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                //   width: 17.1*fem,
                                //   height: 10.7*fem,
                                //   child: Image.asset(
                                //     'assets/page-1/images/combined-shape-zQ1.png',
                                //     width: 17.1*fem,
                                //     height: 10.7*fem,
                                //   ),
                                // ),
                                // SizedBox(
                                //   width: 5*fem,
                                // ),
                                // Container(
                                //   // wifih77 (114:1696)
                                //   margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                //   width: 15.4*fem,
                                //   height: 11.06*fem,
                                //   child: Image.asset(
                                //     'assets/page-1/images/wi-fi-biy.png',
                                //     width: 15.4*fem,
                                //     height: 11.06*fem,
                                //   ),
                                // ),
                                // SizedBox(
                                //   width: 5*fem,
                                // ),
                                // Container(
                                //   // batteryy4d (114:1684)
                                //   width: 24.5*fem,
                                //   height: 11.5*fem,
                                //   child: Image.asset(
                                //     'assets/page-1/images/battery-NP3.png',
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
                  ),
                  Positioned(
                    // successfulchildwithgraduationc (114:1700)
                    left: -136 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 688 * fem,
                        height: 489 * fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(244.5 * fem),
                          child: Image.asset(
                            'lib/assets/succesfulchildwithcap.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // containerXkM (114:1701)
                    left: 28.5 * fem,
                    top: 12 * fem,
                    child: Container(
                      width: 382.11 * fem,
                      height: 20 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // time3To (114:1719)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 284.11 * fem, 0 * fem),
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
                            // combinedshapejrR (114:1709)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5 * fem, 2.1 * fem),
                            width: 17.1 * fem,
                            height: 10.7 * fem,
                            child: Image.asset(
                              'assets/page-1/images/combined-shape-CD7.png',
                              width: 17.1 * fem,
                              height: 10.7 * fem,
                            ),
                          ),
                          Container(
                            // wifieiV (114:1714)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 5 * fem, 2.14 * fem),
                            width: 15.4 * fem,
                            height: 11.06 * fem,
                            child: Image.asset(
                              'assets/page-1/images/wi-fi.png',
                              width: 15.4 * fem,
                              height: 11.06 * fem,
                            ),
                          ),
                          Container(
                            // batteryxjB (114:1702)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 2.18 * fem),
                            width: 24.5 * fem,
                            height: 11.5 * fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-zAM.png',
                              width: 24.5 * fem,
                              height: 11.5 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup6cmbHFf (2Tkyhr9UodsLnHVwEm6cMB)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
              width: 426 * fem,
              height: 424 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // logintoyouraccountPZb (114:1668)
                    left: 89 * fem,
                    top: 106 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 200 * fem,
                        height: 81 * fem,
                        child: Text(
                          'Log in \nto your Account',
                          style: SafeGoogleFont(
                            'Thabit',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2599999905 * ffem / fem,
                            letterSpacing: -0.64 * fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle437249w (114:1669)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 426 * fem,
                        height: 424 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38 * fem),
                            color: Color(0xfffec635),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // createanaccounttostarttracking (114:1670)
                    left: 49 * fem,
                    top: 188 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 309 * fem,
                        height: 33 * fem,
                        child: Text(
                          'Create an account to start tracking your trips and get new updates. It\'s easy to register.',
                          style: SafeGoogleFont(
                            'Thabit',
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xff373232),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // letscheckyourtripwithschoolbus (114:1671)
                    left: 52.5 * fem,
                    top: 34 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 323 * fem,
                        height: 81 * fem,
                        child: Text(
                          'Let’s check your trip with School Bus App',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2599999905 * ffem / fem,
                            letterSpacing: -0.64 * fem,
                            color: Color(0xff373232),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group339044xZ (114:1673)
                    left: 159 * fem,
                    top: 296 * fem,
                    child: Container(
                      width: 117 * fem,
                      height: 28 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // getstartedBnH (114:1674)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 6.54 * fem, 0 * fem),
                            child: Text(
                              'Get Started',
                              style: SafeGoogleFont(
                                'Titan One',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.7150000334 * ffem / fem,
                                color: Color(0xff373232),
                              ),
                            ),
                          ),
                          Container(
                            // vectorW3s (114:1675)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 1 * fem),
                            width: 10.46 * fem,
                            height: 9 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector.png',
                              width: 10.46 * fem,
                              height: 9 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group33813DDB (114:1676)
                    left: 195 * fem,
                    top: 358 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 38 * fem,
                        height: 8 * fem,
                        child: Image.asset(
                          'assets/page-1/images/group-33813.png',
                          width: 38 * fem,
                          height: 8 * fem,
                        ),
                      ),
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
