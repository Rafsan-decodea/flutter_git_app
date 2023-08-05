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
        // profileZhK (114:2031)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupndmptUh (2TmAiN8tDS8VDC24HwNDmP)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 55.8*fem),
              width: double.infinity,
              height: 267*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle45CkH (114:2051)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 548*fem,
                        height: 239*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xfffec635),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group33909iCq (114:2052)
                    left: 27*fem,
                    top: 90*fem,
                    child: Container(
                      width: 377.9*fem,
                      height: 36*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vectorstrokecp1 (114:2055)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 139*fem, 1.33*fem),
                            width: 10*fem,
                            height: 17.33*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-stroke-zp9.png',
                              width: 10*fem,
                              height: 17.33*fem,
                            ),
                          ),
                          Container(
                            // profilewLV (114:2054)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134*fem, 0*fem),
                            child: Text(
                              'Profile',
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
                            // vectorTJq (114:2053)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                            width: 15.9*fem,
                            height: 17.67*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-kHf.png',
                              width: 15.9*fem,
                              height: 17.67*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // containerNAu (114:2056)
                    left: 337.5*fem,
                    top: 18.1600341797*fem,
                    child: Container(
                      width: 67*fem,
                      height: 11.5*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // combinedshapeghP (114:2064)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                            width: 17.1*fem,
                            height: 10.7*fem,
                            child: Image.asset(
                              'assets/page-1/images/combined-shape-Ewb.png',
                              width: 17.1*fem,
                              height: 10.7*fem,
                            ),
                          ),
                          SizedBox(
                            width: 5*fem,
                          ),
                          Container(
                            // wifinVX (114:2069)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                            width: 15.4*fem,
                            height: 11.06*fem,
                            child: Image.asset(
                              'assets/page-1/images/wi-fi-6ho.png',
                              width: 15.4*fem,
                              height: 11.06*fem,
                            ),
                          ),
                          SizedBox(
                            width: 5*fem,
                          ),
                          Container(
                            // batteryV93 (114:2057)
                            width: 24.5*fem,
                            height: 11.5*fem,
                            child: Image.asset(
                              'assets/page-1/images/battery-ibK.png',
                              width: 24.5*fem,
                              height: 11.5*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // timeDaq (114:2074)
                    left: 32.5*fem,
                    top: 14*fem,
                    child: Align(
                      child: SizedBox(
                        width: 31*fem,
                        height: 20*fem,
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
                    ),
                  ),
                  Positioned(
                    // group340386uX (114:2075)
                    left: 311*fem,
                    top: 203*fem,
                    child: Container(
                      width: 105*fem,
                      height: 29*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff2f302e),
                        borderRadius: BorderRadius.circular(5*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Profile',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group33880rXK (114:2131)
                    left: 23*fem,
                    top: 171*fem,
                    child: Container(
                      width: 167*fem,
                      height: 96*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse580AH7 (114:2134)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                            width: 96*fem,
                            height: 96*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(48*fem),
                              color: Color(0xffd9d9d9),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/ellipse-580-bg.png',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            // melisaGb3 (114:2135)
                            'Melisa',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xff1e1d1d),
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
              // group34039ceu (114:2078)
              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 12*fem, 79.8*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupxb9owSH (2TmCQeeT4v61LMT3dzXB9o)
                    padding: EdgeInsets.fromLTRB(26.93*fem, 5.18*fem, 26.93*fem, 6.86*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff6f6f6),
                    ),
                    child: Text(
                      'Mimi Headline',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupj1ivDub (2TmDyBsvXiq3H7yC8Sj1iV)
                    padding: EdgeInsets.fromLTRB(26.93*fem, 7.25*fem, 16.58*fem, 16.36*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupgjerjd3 (2TmCXyma3JE5YgdkssgJER)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.25*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // popularUKj (114:2083)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 286.99*fem, 2.9*fem),
                                child: Text(
                                  'Popular',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group64zJ5 (114:2094)
                                opacity: 0.65,
                                child: Container(
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-64.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupyowsuR3 (2TmCgE2q8j8fHZDZGjyows)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.08*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // treadingqpV (114:2088)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 277.99*fem, 0*fem),
                                child: Text(
                                  'Treading',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group65mTF (114:2106)
                                opacity: 0.65,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 3.93*fem, 0*fem, 0*fem),
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-65.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnxcyTL5 (2TmCotUjEwjTsYBaCoNXcy)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // todayBms (114:2092)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 297.99*fem, 0*fem),
                                child: Text(
                                  'Today',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group66uSy (114:2118)
                                opacity: 0.65,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.21*fem),
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-66.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
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
                    // autogrouprtfjQed (2TmCvy7GMx2VJdXog3rTFj)
                    width: double.infinity,
                    height: 30.04*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // dayskCh (114:2079)
                          left: 23.8256835938*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 45*fem,
                              height: 17*fem,
                              child: Text(
                                '4 days',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle48F9T (114:2081)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 404*fem,
                              height: 30.04*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xfff6f6f6),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // contentkru (114:2086)
                          left: 26.9331054688*fem,
                          top: 5.1794891357*fem,
                          child: Align(
                            child: SizedBox(
                              width: 50*fem,
                              height: 18*fem,
                              child: Text(
                                'Content',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
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
                    // autogroupn4wfFYm (2TmECmKdnX7JzR3sc8n4wf)
                    padding: EdgeInsets.fromLTRB(26.93*fem, 9.32*fem, 16.58*fem, 22.58*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouppzzfyjf (2TmD5YhJbDPoR9tum6PZZf)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.18*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // heartiBT (114:2129)
                                margin: EdgeInsets.fromLTRB(0*fem, 2.9*fem, 15.54*fem, 0*fem),
                                width: 19.68*fem,
                                height: 17.22*fem,
                                child: Image.asset(
                                  'assets/page-1/images/heart.png',
                                  width: 19.68*fem,
                                  height: 17.22*fem,
                                ),
                              ),
                              Container(
                                // favourite1wF (114:2090)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 239.77*fem, 0*fem),
                                child: Text(
                                  'Favourite',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group67w4D (114:2102)
                                opacity: 0.65,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.21*fem),
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-67.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupbrof37F (2TmDFD5sWSkzF3YkrDBrof)
                          margin: EdgeInsets.fromLTRB(2.31*fem, 0*fem, 0*fem, 0*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // iconoutlinedapplicationdownloa (114:2130)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.75*fem, 0.21*fem),
                                width: 18.16*fem,
                                height: 17.09*fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon-outlined-application-download.png',
                                  width: 18.16*fem,
                                  height: 17.09*fem,
                                ),
                              ),
                              Container(
                                // downloadUTT (114:2089)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 233.77*fem, 0*fem),
                                child: Text(
                                  'Download',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group68zAu (114:2114)
                                opacity: 0.65,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.86*fem, 0*fem, 0*fem),
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-68.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
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
                    // autogroupiy7b6Dw (2TmDPnfuji8JMZurwFiy7b)
                    padding: EdgeInsets.fromLTRB(26.93*fem, 5.18*fem, 26.93*fem, 6.86*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff6f6f6),
                    ),
                    child: Text(
                      'Preferences',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupllehAjb (2TmEQve3DWvych4WPaLLeH)
                    padding: EdgeInsets.fromLTRB(25.9*fem, 18.65*fem, 16.58*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup66t7ghw (2TmDWhe4HoBxbqNSZR66T7)
                          margin: EdgeInsets.fromLTRB(1.04*fem, 0*fem, 0*fem, 20.72*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // translateQ89 (114:2126)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.43*fem, 0*fem),
                                width: 22.79*fem,
                                height: 22.79*fem,
                                child: Image.asset(
                                  'assets/page-1/images/translate.png',
                                  width: 22.79*fem,
                                  height: 22.79*fem,
                                ),
                              ),
                              Container(
                                // languageKF7 (114:2084)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 233.77*fem, 0.83*fem),
                                child: Text(
                                  'Language',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group69SKj (114:2098)
                                opacity: 0.65,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.07*fem),
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-69.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupqd1wjpd (2TmDes586mUrkJ1R2jqD1w)
                          margin: EdgeInsets.fromLTRB(1.05*fem, 0*fem, 0*fem, 14.29*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // umoonUnD (114:2127)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.91*fem, 14.47*fem, 0*fem),
                                width: 20.73*fem,
                                height: 20.15*fem,
                                child: Image.asset(
                                  'assets/page-1/images/u-moon.png',
                                  width: 20.73*fem,
                                  height: 20.15*fem,
                                ),
                              ),
                              Container(
                                // darkmodezkZ (114:2091)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 230.77*fem, 0*fem),
                                child: Text(
                                  'Darkmode',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group70iRf (114:2110)
                                opacity: 0.65,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.86*fem, 0*fem, 0*fem),
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-70.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupdwcqoxu (2TmDmhD5NPvqQ9XAjMdwCq)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.03*fem, 0*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // wifiXP7 (114:2128)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.4*fem, 0*fem),
                                width: 24.86*fem,
                                height: 24.86*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wifi.png',
                                  width: 24.86*fem,
                                  height: 24.86*fem,
                                ),
                              ),
                              Container(
                                // onlydownloadviawifiRzH (114:2093)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.21*fem, 136.73*fem, 0*fem),
                                child: Text(
                                  'Only Download via Wifi',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Opacity(
                                // group71wBw (114:2122)
                                opacity: 0.65,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 2.07*fem, 0*fem, 0*fem),
                                  width: 14.5*fem,
                                  height: 14.5*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-71.png',
                                    width: 14.5*fem,
                                    height: 14.5*fem,
                                  ),
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
            Container(
              // frame11qYD (114:2032)
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
                    // rectangle15A4h (114:2033)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 108*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-15.png',
                          width: 428*fem,
                          height: 108*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34027sjo (114:2034)
                    left: 22.7998046875*fem,
                    top: 20*fem,
                    child: Container(
                      width: 396.9*fem,
                      height: 70*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupekc9PCM (2TmBDBeCQCzgW35wiCeKC9)
                            padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // Jq7 (114:2035)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // vectorSwK (114:2036)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-Rhs.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // profileNKB (114:2037)
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
                                  // 7Xf (114:2038)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // calendarsmj (114:2039)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/calendar-n5w.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // walletC3K (114:2041)
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
                            // homejJ9 (114:2043)
                            width: 70*fem,
                            height: 70*fem,
                            child: Image.asset(
                              'assets/page-1/images/home-T5s.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // autogroupwpubsfF (2TmBMRuTVduGEufk74wpub)
                            padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // zzm (114:2044)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                  width: 49*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // cahtjSZ (114:2045)
                                        margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                        width: double.infinity,
                                        child: Center(
                                          // setting1t4Z (114:2046)
                                          child: SizedBox(
                                            width: 24*fem,
                                            height: 24*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/setting-1-3gu.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // settignsDcd (114:2047)
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
                                  // ZgV (114:2048)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // alarmbell1X7X (114:2049)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/alarm-bell-1-XVb.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // natification3bf (114:2050)
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