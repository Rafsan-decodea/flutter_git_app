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
        // reportNGH (114:1978)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupbz7btVX (2Tm9CaKq7mgyr3hBGSbZ7B)
              padding: EdgeInsets.fromLTRB(17*fem, 14*fem, 23*fem, 431*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupp7kyCm7 (2Tm8wFS2uLVNg5m9QKp7ky)
                    margin: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 0.5*fem, 52*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timeJp9 (114:2006)
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
                          // containeroku (114:1979)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshape945 (114:1987)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-6d7.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wifi27s (114:1992)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-cvV.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryj2H (114:1980)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-rUy.png',
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
                    // group339093of (114:2001)
                    margin: EdgeInsets.fromLTRB(4.9*fem, 0*fem, 0*fem, 14*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokeBQ5 (114:2004)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 144*fem, 1.33*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-hJy.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // reportgbj (114:2003)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 128*fem, 0*fem),
                          child: Text(
                            'Report',
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
                          // vectorCKB (114:2002)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-VLu.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group33880uzH (114:1996)
                    margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 199.5*fem, 31*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse579RSq (114:1999)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.5*fem, 0*fem),
                          width: 96*fem,
                          height: 96*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(48*fem),
                            color: Color(0xffd9d9d9),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/ellipse-579-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // melisaigq (114:2000)
                          margin: EdgeInsets.fromLTRB(0*fem, 18*fem, 0*fem, 0*fem),
                          child: Text(
                            'Melisa',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xff1e1d1d),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame512392eKb (114:2007)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                    padding: EdgeInsets.fromLTRB(16*fem, 11.5*fem, 11*fem, 11.5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffcfcfcf)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8*fem),
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
                          // selectstudentk1F (114:2008)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 198*fem, 0*fem),
                          child: Text(
                            'Select Student',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff1e1d1d),
                            ),
                          ),
                        ),
                        Container(
                          // downbuttone6d (114:2009)
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/down-button.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup2rwmBcM (2Tm965WeyyhjZqxjG12RWm)
                    margin: EdgeInsets.fromLTRB(97*fem, 0*fem, 91*fem, 0*fem),
                    width: double.infinity,
                    height: 41*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(18*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x4cd9d9d9),
                          offset: Offset(0*fem, 15*fem),
                          blurRadius: 15*fem,
                        ),
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Select Student',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5*ffem/fem,
                          color: Color(0xff454545),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame11odj (114:2012)
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
                    // rectangle15uRs (114:2013)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 108*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-15-FUm.png',
                          width: 428*fem,
                          height: 108*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group340271Uu (114:2014)
                    left: 22.8000488281*fem,
                    top: 20*fem,
                    child: Container(
                      width: 396.9*fem,
                      height: 70*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouppdufuqB (2TmA3DbSqkyeM9jiQCpduf)
                            padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // EcZ (114:2015)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // vectoraAd (114:2016)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-YUq.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // profilegjT (114:2017)
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
                                  // QvM (114:2018)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // calendarZoF (114:2019)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/calendar.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // walletHDT (114:2021)
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
                            // homedHK (114:2023)
                            width: 70*fem,
                            height: 70*fem,
                            child: Image.asset(
                              'assets/page-1/images/home-iRF.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // autogroupewvmy6H (2TmABdX6W77bGrDAeAEwvM)
                            padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // VqK (114:2024)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                  width: 49*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // cahtEH7 (114:2025)
                                        margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                        width: double.infinity,
                                        child: Center(
                                          // setting1BCM (114:2026)
                                          child: SizedBox(
                                            width: 24*fem,
                                            height: 24*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/setting-1-U4H.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // settignsv9w (114:2027)
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
                                  // 4X3 (114:2028)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // alarmbell1RcV (114:2029)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/alarm-bell-1-jmK.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // natificationkem (114:2030)
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