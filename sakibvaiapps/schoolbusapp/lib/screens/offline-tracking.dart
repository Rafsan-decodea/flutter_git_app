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
        // offlinetrackingdeH (114:2882)
        width: double.infinity,
        height: 926*fem,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // mapZXw (114:2883)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(24*fem, 14*fem, 23.1*fem, 36*fem),
                width: 428*fem,
                height: 354*fem,
                decoration: BoxDecoration (
                  image: DecorationImage (
                    image: AssetImage (
                      'assets/page-1/images/map-bg.png',
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupxefw2RX (2TmiohASi6QXF9CXUFXEFw)
                      margin: EdgeInsets.fromLTRB(8.5*fem, 0*fem, 0.4*fem, 10*fem),
                      width: double.infinity,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timex4H (114:2989)
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
                            // containereho (114:2967)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // combinedshapeyVB (114:2975)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/combined-shape-qT7.png',
                                    width: 17.1*fem,
                                    height: 10.7*fem,
                                  ),
                                ),
                                SizedBox(
                                  width: 5*fem,
                                ),
                                Container(
                                  // wifiTv9 (114:2980)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/wi-fi-Rsf.png',
                                    width: 15.4*fem,
                                    height: 11.06*fem,
                                  ),
                                ),
                                SizedBox(
                                  width: 5*fem,
                                ),
                                Container(
                                  // batterymR3 (114:2968)
                                  width: 24.5*fem,
                                  height: 11.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/battery-GHf.png',
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
                      // chevronleftVbw (114:2890)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                      width: 34*fem,
                      height: 34*fem,
                    ),
                    Container(
                      // autogroupzrydEZX (2Tmj66rmcVc18URJLSZrYD)
                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                      width: 378.9*fem,
                      height: 229*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // vector40Zbo (114:2884)
                            left: 59*fem,
                            top: 23*fem,
                            child: Align(
                              child: SizedBox(
                                width: 192*fem,
                                height: 206*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-40.png',
                                  width: 192*fem,
                                  height: 206*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // floatingbuttonnormal54M (114:2885)
                            left: 318*fem,
                            top: 150*fem,
                            child: Align(
                              child: SizedBox(
                                width: 60*fem,
                                height: 60*fem,
                                child: Image.asset(
                                  'assets/page-1/images/floating-button-normal.png',
                                  width: 60*fem,
                                  height: 60*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // bus11ArV (114:2891)
                            left: 138*fem,
                            top: 88*fem,
                            child: Align(
                              child: SizedBox(
                                width: 49.92*fem,
                                height: 49.92*fem,
                                child: Image.asset(
                                  'assets/page-1/images/bus-1-1-pbK.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // group34034gK3 (114:2984)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 378.9*fem,
                              height: 36*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // vectorstrokePz9 (114:2987)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 81*fem, 1.33*fem),
                                    width: 10*fem,
                                    height: 17.33*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-stroke-PNH.png',
                                      width: 10*fem,
                                      height: 17.33*fem,
                                    ),
                                  ),
                                  Container(
                                    // offlinetrackingRA9 (114:2986)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                    child: Text(
                                      'Offline Tracking',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 24*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff1e1d1d),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // vector8qF (114:2985)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                                    width: 15.9*fem,
                                    height: 17.67*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vector-3mT.png',
                                      width: 15.9*fem,
                                      height: 17.67*fem,
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
            ),
            Positioned(
              // frame23xD (114:2892)
              left: 0*fem,
              top: 336*fem,
              child: Container(
                width: 428*fem,
                height: 512*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(22*fem),
                    topRight: Radius.circular(22*fem),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x0c000000),
                      offset: Offset(0*fem, -4.3169493675*fem),
                      blurRadius: 10.7923736572*fem,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // frame28Ts (114:2893)
                      left: 0*fem,
                      top: -0.0000152588*fem,
                      child: Align(
                        child: SizedBox(
                          width: 428*fem,
                          height: 512*fem,
                          child: Image.asset(
                            'assets/page-1/images/frame-2.png',
                            width: 428*fem,
                            height: 512*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // zisad353 (114:2898)
                      left: 163*fem,
                      top: 77*fem,
                      child: Align(
                        child: SizedBox(
                          width: 102*fem,
                          height: 54*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Text(
                              'Zisad',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 36*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xff171717),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // locatedontheschoolgrounds8MP (114:2899)
                      left: 74*fem,
                      top: 143*fem,
                      child: Align(
                        child: SizedBox(
                          width: 280*fem,
                          height: 27*fem,
                          child: Text(
                            'Located on the school grounds',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff8c8c8c),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // avatarE9X (114:2900)
                      left: 149*fem,
                      top: -65*fem,
                      child: Align(
                        child: SizedBox(
                          width: 130*fem,
                          height: 130*fem,
                          child: Image.asset(
                            'assets/page-1/images/avatar.png',
                            width: 130*fem,
                            height: 130*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // frame14k7s (114:2903)
                      left: 0*fem,
                      top: 226*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(12*fem, 0*fem, 12*fem, 0*fem),
                        width: 404*fem,
                        height: 393*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupmm17SmP (2TmjuzednMMXHrxQAJmM17)
                              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 12*fem, 0*fem),
                              width: double.infinity,
                              height: 68*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // processbarach (114:2904)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                      width: 356*fem,
                                      height: 59*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // pocessicongvd (114:2905)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 11*fem),
                                            width: 48*fem,
                                            height: 48*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/pocess-icon.png',
                                              width: 48*fem,
                                              height: 48*fem,
                                            ),
                                          ),
                                          Container(
                                            // frame14NYZ (114:2908)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 127*fem, 0*fem),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // text7FF (114:2909)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  child: Text(
                                                    'Speaking lesson',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff8c8c8c),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // subtextRFw (114:2910)
                                                  '10:30 - 11:00',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff8c8c8c),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // iconchevronrightmKo (114:2911)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                            width: 6*fem,
                                            height: 12*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/icon-chevron-right-4DP.png',
                                              width: 6*fem,
                                              height: 12*fem,
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
                              // frame4sdj (114:2916)
                              padding: EdgeInsets.fromLTRB(12*fem, 14*fem, 21*fem, 14*fem),
                              width: double.infinity,
                              height: 86*fem,
                              decoration: BoxDecoration (
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(12*fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x14000000),
                                    offset: Offset(0*fem, 4.3169493675*fem),
                                    blurRadius: 6.4754238129*fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // pocessiconZWZ (114:2917)
                                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 16*fem, 5*fem),
                                    width: 48*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(60*fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // ellipse163UdX (114:2918)
                                          left: 0*fem,
                                          top: 0.0007476807*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 48*fem,
                                              height: 48*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/ellipse-163.png',
                                                width: 48*fem,
                                                height: 48*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // ellipse164PEh (114:2919)
                                          left: 0*fem,
                                          top: 0.0007476807*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 48*fem,
                                              height: 48*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/ellipse-164.png',
                                                width: 48*fem,
                                                height: 48*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // subtexthmB (114:2920)
                                          left: 12*fem,
                                          top: 14*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 23*fem,
                                              height: 27*fem,
                                              child: Text(
                                                '43',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff171717),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame14Q9o (114:2921)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 102*fem, 0*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // textY17 (114:2922)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          child: Text(
                                            'Math lesson',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff171717),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // subtexts3P (114:2923)
                                          '17 min until the end',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff8c8c8c),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // iconchevronrightD7F (114:2924)
                                    width: 6*fem,
                                    height: 12*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/icon-chevron-right-j2H.png',
                                      width: 6*fem,
                                      height: 12*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroup4rmfLhf (2Tmk75AWXPBKCmgHwg4Rmf)
                              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 12*fem, 0*fem),
                              width: double.infinity,
                              height: 80*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // processbar5QM (114:2928)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                      width: 356*fem,
                                      height: 59*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // pocessiconzGR (114:2929)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 11*fem),
                                            width: 48*fem,
                                            height: 48*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/pocess-icon-td7.png',
                                              width: 48*fem,
                                              height: 48*fem,
                                            ),
                                          ),
                                          Container(
                                            // frame14uuB (114:2933)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 69*fem, 0*fem),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // textf7f (114:2934)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  child: Text(
                                                    'Grammar lesson',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff8c8c8c),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // subtextmwP (114:2935)
                                                  '46 min before the start',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff8c8c8c),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // iconchevronright7kM (114:2936)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                            width: 6*fem,
                                            height: 12*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/icon-chevron-right-R37.png',
                                              width: 6*fem,
                                              height: 12*fem,
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
                              // autogrouprrc5SGq (2TmkPENFaQXkJs4b3ERrc5)
                              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 12*fem, 0*fem),
                              width: double.infinity,
                              height: 80*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // processbarBER (114:2940)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                      width: 356*fem,
                                      height: 59*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // pocessiconhCm (114:2941)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 11*fem),
                                            width: 48*fem,
                                            height: 48*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/pocess-icon-vKT.png',
                                              width: 48*fem,
                                              height: 48*fem,
                                            ),
                                          ),
                                          Container(
                                            // frame14oWh (114:2945)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 64*fem, 0*fem),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // text94m (114:2946)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  child: Text(
                                                    'Reading lesson',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff8c8c8c),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // subtext4hX (114:2947)
                                                  '120 min before the start',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff8c8c8c),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // iconchevronrightoQD (114:2948)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                            width: 6*fem,
                                            height: 12*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/icon-chevron-right-Qsj.png',
                                              width: 6*fem,
                                              height: 12*fem,
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
                              // processbarui9 (114:2952)
                              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 12*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // pocessiconEEd (114:2953)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 11*fem),
                                    width: 48*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/pocess-icon-cyw.png',
                                      width: 48*fem,
                                      height: 48*fem,
                                    ),
                                  ),
                                  Container(
                                    // frame14M4M (114:2960)
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 68*fem, 0*fem),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // text61w (114:2961)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          child: Text(
                                            'Landing in the car',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff8c8c8c),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // subtextCqf (114:2962)
                                          '200 min before serving',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff8c8c8c),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // iconchevronrightksB (114:2963)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                    width: 6*fem,
                                    height: 12*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/icon-chevron-right.png',
                                      width: 6*fem,
                                      height: 12*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // tapableareagVw (114:2965)
                      left: 121.5*fem,
                      top: 177*fem,
                      child: Container(
                        width: 184*fem,
                        height: 24*fem,
                        child: Center(
                          child: Text(
                            'Show previous actions',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xffff9900),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame11aLR (114:2990)
              left: 0*fem,
              top: 818*fem,
              child: Container(
                width: 428*fem,
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
                      // rectangle155ny (114:2991)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 428*fem,
                          height: 108*fem,
                          child: Image.asset(
                            'assets/page-1/images/rectangle-15-UpR.png',
                            width: 428*fem,
                            height: 108*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group34027bmK (114:2992)
                      left: 22.7998046875*fem,
                      top: 20*fem,
                      child: Container(
                        width: 396.9*fem,
                        height: 70*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupr5mfib3 (2TmmK7z8BJaRByfBLGr5mf)
                              padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // qvZ (114:2993)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vectorNvV (114:2994)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          width: 24*fem,
                                          height: 24*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-q2R.png',
                                            width: 24*fem,
                                            height: 24*fem,
                                          ),
                                        ),
                                        Text(
                                          // profilettq (114:2995)
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
                                    // SQZ (114:2996)
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // calendarPqb (114:2997)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                          width: 24*fem,
                                          height: 24*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/calendar-ygV.png',
                                            width: 24*fem,
                                            height: 24*fem,
                                          ),
                                        ),
                                        Text(
                                          // walletvKj (114:2999)
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
                              // homerz5 (114:3001)
                              width: 70*fem,
                              height: 70*fem,
                              child: Image.asset(
                                'assets/page-1/images/home-t4Z.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // autogroupwbedcTT (2TmmTnQMh2ZQtuy7LrwbED)
                              padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // wkd (114:3002)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                    width: 49*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // cahtHJh (114:3003)
                                          margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                          width: double.infinity,
                                          child: Center(
                                            // setting1q5K (114:3004)
                                            child: SizedBox(
                                              width: 24*fem,
                                              height: 24*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/setting-1-TKP.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // settignsNb3 (114:3005)
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
                                    // uqs (114:3006)
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // alarmbell1snh (114:3007)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                          width: 24*fem,
                                          height: 24*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/alarm-bell-1-VQD.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          // natificationogM (114:3008)
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
            ),
          ],
        ),
      ),
          );
  }
}