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
        // bustrackingQw3 (114:2182)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupmzwmYGZ (2TmGyMNiuFFSvPYuVBmZWM)
              padding: EdgeInsets.fromLTRB(26*fem, 14*fem, 23.1*fem, 41*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupstqdeqP (2TmGmXP6c5tWfmKaPvStQD)
                    margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 0.4*fem, 55*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timemQD (114:2205)
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
                          // containerfkV (114:2183)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshapePwP (114:2191)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-6h7.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wifiVUd (114:2196)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-Lid.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryzgH (114:2184)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-gPB.png',
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
                    // group340347ku (114:2200)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 128*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokeFMK (114:2203)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 1.33*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-1F7.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // bustracking9xV (114:2202)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                          child: Text(
                            'Bus Tracking',
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
                          // vectorGnD (114:2201)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-j1T.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group34044BeH (114:2235)
                    margin: EdgeInsets.fromLTRB(125*fem, 0*fem, 130.9*fem, 38*fem),
                    width: double.infinity,
                    height: 119*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // iconlocationhMj (114:2236)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(39*fem, 35*fem, 39.16*fem, 33.94*fem),
                            width: 123*fem,
                            height: 119*fem,
                            decoration: BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/page-1/images/bg.png',
                                ),
                              ),
                            ),
                            child: Center(
                              // iconmsP (114:2238)
                              child: SizedBox(
                                width: 44.84*fem,
                                height: 50.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon.png',
                                  width: 44.84*fem,
                                  height: 50.06*fem,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // location11i1w (114:2239)
                          left: 15*fem,
                          top: 12*fem,
                          child: Align(
                            child: SizedBox(
                              width: 94*fem,
                              height: 94*fem,
                              child: Image.asset(
                                'assets/page-1/images/location-1-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    // enableyourlocationct1 (114:2225)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.9*fem, 28*fem),
                      constraints: BoxConstraints (
                        maxWidth: 168*fem,
                      ),
                      child: Text(
                        'Enable your\nLocation',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Roboto',
                          fontSize: 30*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1725*ffem/fem,
                          letterSpacing: 0.8700000048*fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group340436HP (114:2227)
                    margin: EdgeInsets.fromLTRB(59*fem, 0*fem, 59.9*fem, 174*fem),
                    width: double.infinity,
                    height: 62*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // group3pUH (114:2228)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 260*fem,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Container(
                              // group2YfB (114:2229)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                // rectangle1VqK (114:2230)
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 60*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(10*fem),
                                      color: Color(0xff6786f6),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group4RU5 (114:2231)
                          left: 0*fem,
                          top: 2*fem,
                          child: Container(
                            width: 260*fem,
                            height: 60*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Container(
                              // group2xD7 (114:2232)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffff7336),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Enable',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Roboto',
                                      fontSize: 24*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1725*ffem/fem,
                                      letterSpacing: 0.8700000048*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // placeholderDuj (114:2226)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.9*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 212*fem,
                    ),
                    child: Text(
                      '🔒 Magicaly secured text to make all security concerns go away.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame11ibb (114:2206)
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
                    // rectangle15dyT (114:2207)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 108*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-15-Umo.png',
                          width: 428*fem,
                          height: 108*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34027jWh (114:2208)
                    left: 22.7998046875*fem,
                    top: 20*fem,
                    child: Container(
                      width: 396.9*fem,
                      height: 70*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupfqkh3XP (2TmHpF8vUcPACjRvPafqkh)
                            padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // NJm (114:2209)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // vectorJiD (114:2210)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-jCV.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // profileS3j (114:2211)
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
                                  // B1K (114:2212)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // calendarvjb (114:2213)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/calendar-59K.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // walleteQh (114:2215)
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
                            // homePNH (114:2217)
                            width: 70*fem,
                            height: 70*fem,
                            child: Image.asset(
                              'assets/page-1/images/home.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // autogroupja2h8Ks (2TmHxEubifShANBF1pJA2H)
                            padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // SrM (114:2218)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                  width: 49*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // cahtahf (114:2219)
                                        margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                        width: double.infinity,
                                        child: Center(
                                          // setting1w2R (114:2220)
                                          child: SizedBox(
                                            width: 24*fem,
                                            height: 24*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/setting-1-tim.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // settignsGKb (114:2221)
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
                                  // p6D (114:2222)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // alarmbell1aLH (114:2223)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/alarm-bell-1-Qwb.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // natificationVi9 (114:2224)
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