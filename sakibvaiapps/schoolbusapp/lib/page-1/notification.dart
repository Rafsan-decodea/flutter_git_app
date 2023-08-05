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
        // notification78M (114:2410)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupyplu2WD (2TmTuczCqe8n6ErtTcYpLu)
              padding: EdgeInsets.fromLTRB(23*fem, 14*fem, 23.5*fem, 106*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup7lwxw7P (2TmThdLByZYUenjuXG7LwX)
                    margin: EdgeInsets.fromLTRB(9.5*fem, 0*fem, 0*fem, 44*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timeTLd (114:2433)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 274*fem, 0*fem),
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
                          // containerMgu (114:2411)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshapegUH (114:2419)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-Rmb.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wifimVj (114:2424)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-z6m.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryGhP (114:2412)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-3yb.png',
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
                    // group33909ztH (114:2428)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.6*fem, 92*fem),
                    width: 380.9*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokeKvZ (114:2431)
                          margin: EdgeInsets.fromLTRB(0*fem, 14.67*fem, 0*fem, 0*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-e8Z.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        SizedBox(
                          width: 105*fem,
                        ),
                        Text(
                          // notificationDFF (114:2430)
                          'Notification',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: Color(0xff1e1d1d),
                          ),
                        ),
                        SizedBox(
                          width: 105*fem,
                        ),
                        Container(
                          // vectorLKs (114:2429)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-zvD.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group34033Fhj (114:2456)
                    margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 4.5*fem, 7*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group34032aV7 (114:2457)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 22*fem, 16*fem, 25*fem),
                          width: double.infinity,
                          height: 138*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.only (
                              topLeft: Radius.circular(9*fem),
                              topRight: Radius.circular(9*fem),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle159Qyw (114:2463)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                                width: 7*fem,
                                height: 91*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xffed1316),
                                  borderRadius: BorderRadius.only (
                                    topRight: Radius.circular(25*fem),
                                    bottomRight: Radius.circular(25*fem),
                                  ),
                                ),
                              ),
                              Container(
                                // ellipse44vBb (114:2462)
                                margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 13*fem, 0*fem),
                                width: 42*fem,
                                height: 46*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ellipse-44.png',
                                  width: 42*fem,
                                  height: 46*fem,
                                ),
                              ),
                              Container(
                                // autogroup5nfwdrh (2TmUK7K4s3dHQfRto45NFw)
                                margin: EdgeInsets.fromLTRB(0*fem, 25*fem, 36*fem, 10*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // carmenparksouthZkM (114:2460)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                      child: Text(
                                        'Carmen Parksouth',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // heycanyoucheckthelatestdocumen (114:2461)
                                      constraints: BoxConstraints (
                                        maxWidth: 195*fem,
                                      ),
                                      child: Text(
                                        'Hey, can you check the latest documents posted in the group?',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff7f7f7f),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // dayNho (114:2459)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                child: Text(
                                  '1 day',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group34031gyP (114:2464)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 11*fem, 16*fem, 11*fem),
                          width: double.infinity,
                          height: 143*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle155A7s (114:2470)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 30*fem),
                                width: 7*fem,
                                height: 91*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff00a1df),
                                  borderRadius: BorderRadius.only (
                                    topRight: Radius.circular(25*fem),
                                    bottomRight: Radius.circular(25*fem),
                                  ),
                                ),
                              ),
                              Container(
                                // ellipse45UeM (114:2469)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 27*fem),
                                width: 39*fem,
                                height: 46*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ellipse-45.png',
                                  width: 39*fem,
                                  height: 46*fem,
                                ),
                              ),
                              Container(
                                // autogroupgpdjC4Z (2TmUYmayQJXEiNTQCHgpdj)
                                margin: EdgeInsets.fromLTRB(0*fem, 24*fem, 36*fem, 51*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // heiditurnerKQ5 (114:2468)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                      child: Text(
                                        'Heidi Turner',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // heycanyoucheckthelatestdocumen (114:2466)
                                      constraints: BoxConstraints (
                                        maxWidth: 195*fem,
                                      ),
                                      child: Text(
                                        'Hey, can you check the latest documents posted in the group?',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff7f7f7f),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // dayL4H (114:2467)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 70*fem),
                                child: Text(
                                  '1 day',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group34030r2d (114:2471)
                          padding: EdgeInsets.fromLTRB(0*fem, 11*fem, 16*fem, 11*fem),
                          width: double.infinity,
                          height: 143*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle1647jF (114:2477)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 30*fem),
                                width: 7*fem,
                                height: 91*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff07ac49),
                                  borderRadius: BorderRadius.only (
                                    topRight: Radius.circular(25*fem),
                                    bottomRight: Radius.circular(25*fem),
                                  ),
                                ),
                              ),
                              Container(
                                // ellipse46dBo (114:2476)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 27*fem),
                                width: 39*fem,
                                height: 46*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ellipse-46.png',
                                  width: 39*fem,
                                  height: 46*fem,
                                ),
                              ),
                              Container(
                                // autogroup8j37Lc1 (2TmUkmEzGP7Y9paP8e8J37)
                                margin: EdgeInsets.fromLTRB(0*fem, 24*fem, 36*fem, 51*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // heiditurnerfPP (114:2475)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                      child: Text(
                                        'Heidi Turner',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // heycanyoucheckthelatestdocumen (114:2473)
                                      constraints: BoxConstraints (
                                        maxWidth: 195*fem,
                                      ),
                                      child: Text(
                                        'Hey, can you check the latest documents posted in the group?',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          color: Color(0xff7f7f7f),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // day6Do (114:2474)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 70*fem),
                                child: Text(
                                  '1 day',
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125*ffem/fem,
                                    color: Color(0xff7f7f7f),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group34029DZK (114:2453)
                    margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 4.5*fem, 0*fem),
                    width: double.infinity,
                    height: 61*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffecf3ff),
                      borderRadius: BorderRadius.only (
                        bottomRight: Radius.circular(9*fem),
                        bottomLeft: Radius.circular(9*fem),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'View All',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: Color(0xff24befe),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame11H3P (114:2434)
              width: double.infinity,
              height: 108*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(30*fem),
                  topRight: Radius.circular(30*fem),
                  bottomRight: Radius.circular(18*fem),
                  bottomLeft: Radius.circular(18*fem),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle15Q81 (114:2435)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 108*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-15-121.png',
                          width: 428*fem,
                          height: 108*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34027Wgq (114:2436)
                    left: 22.8000488281*fem,
                    top: 20*fem,
                    child: Container(
                      width: 396.9*fem,
                      height: 70*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupq8zsRoo (2TmVfjiikEPhWPmtGhQ8Zs)
                            padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // AWV (114:2437)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // vectorJsb (114:2438)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-HFP.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // profileEmF (114:2439)
                                        'Profile',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff071590),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // n25 (114:2440)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // calendar8bj (114:2441)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/calendar-Fgd.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // walleteKB (114:2443)
                                        'Wallet',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff071590),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // homenwB (114:2445)
                            width: 70*fem,
                            height: 70*fem,
                            child: Image.asset(
                              'assets/page-1/images/home-4Cy.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // autogrouphehk8VF (2TmVoyyyqfJHFGMgfZheHK)
                            padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // TnR (114:2446)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                  width: 49*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // caht13F (114:2447)
                                        margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                        width: double.infinity,
                                        child: Center(
                                          // setting1xDP (114:2448)
                                          child: SizedBox(
                                            width: 24*fem,
                                            height: 24*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/setting-1-9yB.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // settigns5Yu (114:2449)
                                        'Settigns',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3333333333*ffem/fem,
                                          color: Color(0xff071590),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // 2DF (114:2450)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // alarmbell1yPP (114:2451)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/alarm-bell-1-1mb.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // natification6U1 (114:2452)
                                        'Natification',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3333333333*ffem/fem,
                                          color: Color(0xff071590),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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