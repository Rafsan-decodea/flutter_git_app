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
        // logoutNFB (114:3087)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouplqpvh2Z (2TmrcoUnSRC6w3XPYELQpV)
              padding: EdgeInsets.fromLTRB(23*fem, 18.16*fem, 23.5*fem, 49.02*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // container13F (114:3092)
                    margin: EdgeInsets.fromLTRB(314.5*fem, 0*fem, 0*fem, 56.34*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // combinedshapevg1 (114:3100)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                          width: 17.1*fem,
                          height: 10.7*fem,
                          child: Image.asset(
                            'assets/page-1/images/combined-shape-GQ9.png',
                            width: 17.1*fem,
                            height: 10.7*fem,
                          ),
                        ),
                        SizedBox(
                          width: 5*fem,
                        ),
                        Container(
                          // wifi1xM (114:3105)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                          width: 15.4*fem,
                          height: 11.06*fem,
                          child: Image.asset(
                            'assets/page-1/images/wi-fi-AFb.png',
                            width: 15.4*fem,
                            height: 11.06*fem,
                          ),
                        ),
                        SizedBox(
                          width: 5*fem,
                        ),
                        Container(
                          // batteryKTF (114:3093)
                          width: 24.5*fem,
                          height: 11.5*fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-tkR.png',
                            width: 24.5*fem,
                            height: 11.5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group33909TZT (114:3114)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.6*fem, 33*fem),
                    width: 380.9*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokenLq (114:3117)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 144*fem, 1.33*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-ZBw.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // settingstuf (114:3116)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109*fem, 0*fem),
                          child: Text(
                            'Settings',
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
                          // vector1Db (114:3115)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-tSV.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group33880j9b (114:3109)
                    margin: EdgeInsets.fromLTRB(99*fem, 0*fem, 115.5*fem, 71.25*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse580sFo (114:3112)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                          width: 96*fem,
                          height: 96*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(48*fem),
                            color: Color(0xffd9d9d9),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/ellipse-580-bg-Sv5.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // melisaNiM (114:3113)
                          margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 0*fem),
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
                    // group34019VHB (114:3120)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 175.87*fem, 0*fem),
                    width: 197.63*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupbmhf1WR (2Tms23K4cSqZUEFv73BmHf)
                          margin: EdgeInsets.fromLTRB(3.93*fem, 0*fem, 0*fem, 44.53*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // vector8qw (114:3135)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27.51*fem, 0*fem),
                                width: 26.2*fem,
                                height: 22.27*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-1Um.png',
                                  width: 26.2*fem,
                                  height: 22.27*fem,
                                ),
                              ),
                              Container(
                                // paymentmethod4Uh (114:3127)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3.51*fem),
                                child: Text(
                                  'Payment method',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupcvjtxa5 (2Tms8TJ3TnD8A23YBwCVjT)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 41.24*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group33899tid (114:3130)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25.55*fem, 0*fem),
                                width: 32.08*fem,
                                height: 33.42*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-33899-1S9.png',
                                  width: 32.08*fem,
                                  height: 33.42*fem,
                                ),
                              ),
                              Container(
                                // notificationsc8q (114:3122)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.31*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Notifications',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupjs8u8N5 (2TmsEHTfKuGugvDNp2JS8u)
                          margin: EdgeInsets.fromLTRB(1.31*fem, 0*fem, 79*fem, 43.66*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // vectorFhb (114:3134)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.89*fem, 0*fem),
                                width: 31.43*fem,
                                height: 31.43*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-5cd.png',
                                  width: 31.43*fem,
                                  height: 31.43*fem,
                                ),
                              ),
                              Text(
                                // promosaE5 (114:3124)
                                'Promos',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupvaw1X9K (2TmsKXovCp2v4vmRyJVaW1)
                          margin: EdgeInsets.fromLTRB(3.06*fem, 0*fem, 106*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // vectorTYm (114:3129)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.63*fem, 0*fem),
                                width: 27.94*fem,
                                height: 27.94*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-uBX.png',
                                  width: 27.94*fem,
                                  height: 27.94*fem,
                                ),
                              ),
                              Container(
                                // helpnL9 (114:3128)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.87*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Help',
                                  style: SafeGoogleFont (
                                    'Rubik',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.185*ffem/fem,
                                    color: Color(0xff000000),
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
              // autogroup8ewh65w (2TmrFtuxDEmm1RFzpf8EWh)
              width: double.infinity,
              height: 305*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group33907pnd (114:3088)
                    left: 195*fem,
                    top: 261*fem,
                    child: Align(
                      child: SizedBox(
                        width: 38*fem,
                        height: 8*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-33907.png',
                          width: 38*fem,
                          height: 8*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // settingsXBF (114:3118)
                    left: 72*fem,
                    top: 21*fem,
                    child: Align(
                      child: SizedBox(
                        width: 65*fem,
                        height: 24*fem,
                        child: Text(
                          'Settings',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorRGd (114:3119)
                    left: 29*fem,
                    top: 21*fem,
                    child: Align(
                      child: SizedBox(
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-tKK.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // logout8Rw (114:3136)
                    left: 30*fem,
                    top: 163*fem,
                    child: Align(
                      child: SizedBox(
                        width: 66*fem,
                        height: 27*fem,
                        child: Text(
                          'Log out',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle4395qbF (114:3137)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 305*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffefce77),
                            borderRadius: BorderRadius.only (
                              topLeft: Radius.circular(40*fem),
                              topRight: Radius.circular(40*fem),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group33991M3o (114:3138)
                    left: 88*fem,
                    top: 176*fem,
                    child: Container(
                      width: 252*fem,
                      height: 40*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(40*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group33957rmF (114:3139)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 118*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(40*fem),
                            ),
                            child: Container(
                              // group33990PmB (114:3140)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(40*fem),
                              ),
                              child: Container(
                                // group33988kbj (114:3141)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(40*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 13*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff1e1d1d),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // group33958eh7 (114:3144)
                            width: 118*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(40*fem),
                            ),
                            child: Container(
                              // group339901Gm (114:3145)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(40*fem),
                              ),
                              child: Container(
                                // group33988xSu (114:3146)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffff0000),
                                  borderRadius: BorderRadius.circular(40*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Yes, Logout',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 13*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
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
                    // areyousureyouwanttologoutScy (114:3151)
                    left: 83*fem,
                    top: 101*fem,
                    child: Align(
                      child: SizedBox(
                        width: 262*fem,
                        height: 24*fem,
                        child: Text(
                          'Are you sure you want to logout?',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5*ffem/fem,
                            color: Color(0xcc434343),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // logoutvo3 (114:3152)
                    left: 180*fem,
                    top: 39*fem,
                    child: Align(
                      child: SizedBox(
                        width: 71*fem,
                        height: 30*fem,
                        child: Text(
                          'Logout',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: Color(0xff2457c5),
                          ),
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