import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/utils.dart';

class Report1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // report1s1T (114:2478)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupdnutagZ (2TmWtY25xHKwqKGCyCDNuT)
              padding:
                  EdgeInsets.fromLTRB(0 * fem, 14 * fem, 0 * fem, 42 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupat8hUmw (2TmWSt6AYwqh6A7idcAT8H)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 23.5 * fem, 51 * fem),
                    height: 21 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timebrZ (114:2480)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 34.11 * fem, 0 * fem),
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
                          // timehPo (114:2508)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 274 * fem, 1 * fem),
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
                          // containerQZ7 (114:2481)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 4.16 * fem, 0 * fem, 5.34 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshape8k1 (114:2489)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.08 * fem, 0 * fem, 0 * fem),
                                width: 17.1 * fem,
                                height: 10.7 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-Sgh.png',
                                  width: 17.1 * fem,
                                  height: 10.7 * fem,
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                              ),
                              Container(
                                // wifiRz1 (114:2494)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.04 * fem, 0 * fem, 0 * fem),
                                width: 15.4 * fem,
                                height: 11.06 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-Sj3.png',
                                  width: 15.4 * fem,
                                  height: 11.06 * fem,
                                ),
                              ),
                              SizedBox(
                                width: 5 * fem,
                              ),
                              Container(
                                // batteryXn9 (114:2482)
                                width: 24.5 * fem,
                                height: 11.5 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-c8y.png',
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
                    // group33909GDw (114:2503)
                    margin: EdgeInsets.fromLTRB(
                        23 * fem, 0 * fem, 24.1 * fem, 14 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokebn1 (114:2506)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 144 * fem, 1.33 * fem),
                          width: 10 * fem,
                          height: 17.33 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-2qP.png',
                            width: 10 * fem,
                            height: 17.33 * fem,
                          ),
                        ),
                        Container(
                          // reportX9s (114:2505)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 128 * fem, 0 * fem),
                          child: Text(
                            'Report',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff1e1d1d),
                            ),
                          ),
                        ),
                        Container(
                          // vectordih (114:2504)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0.33 * fem),
                          width: 15.9 * fem,
                          height: 17.67 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-Ldo.png',
                            width: 15.9 * fem,
                            height: 17.67 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group33880jmj (114:2498)
                    margin: EdgeInsets.fromLTRB(
                        36 * fem, 0 * fem, 222.5 * fem, 31 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse579ffP (114:2501)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 9.5 * fem, 0 * fem),
                          width: 96 * fem,
                          height: 96 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(48 * fem),
                            color: Color(0xffd9d9d9),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/page-1/images/ellipse-579-bg-reu.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // melisaxuP (114:2502)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 18 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Melisa',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff1e1d1d),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame512392Ucq (114:2509)
                    margin: EdgeInsets.fromLTRB(
                        17 * fem, 0 * fem, 23 * fem, 30 * fem),
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 11.5 * fem, 11 * fem, 11.5 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffcfcfcf)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // selectstudentjof (114:2510)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 198 * fem, 0 * fem),
                          child: Text(
                            'Select Student',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff1e1d1d),
                            ),
                          ),
                        ),
                        Container(
                          // downbuttonrtH (114:2511)
                          width: 30 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/page-1/images/down-button-kLH.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupyjubbqs (2TmWgD3HxNGv2DMvLfYJub)
                    margin: EdgeInsets.fromLTRB(
                        114 * fem, 0 * fem, 114 * fem, 22 * fem),
                    width: double.infinity,
                    height: 41 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(18 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x4cd9d9d9),
                          offset: Offset(0 * fem, 15 * fem),
                          blurRadius: 15 * fem,
                        ),
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Select Student',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff454545),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // physicalpCq (114:2514)
                    margin: EdgeInsets.fromLTRB(
                        24 * fem, 0 * fem, 27 * fem, 11 * fem),
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 7.36 * fem, 35.61 * fem, 11.33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 5 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // G4q (114:2517)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.31 * fem, 68.8 * fem, 0 * fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 2 * ffem / fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayBBo (114:2516)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 83.98 * fem, 0.31 * fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupgeM (114:2518)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.09 * fem, 0 * fem, 0 * fem),
                          width: 13.61 * fem,
                          height: 16.13 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-aVw.png',
                            width: 13.61 * fem,
                            height: 16.13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalc2D (114:2520)
                    margin: EdgeInsets.fromLTRB(
                        24 * fem, 0 * fem, 27 * fem, 11 * fem),
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 7.36 * fem, 35.61 * fem, 11.33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 5 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 4uo (114:2523)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.31 * fem, 68.8 * fem, 0 * fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 2 * ffem / fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayNvV (114:2522)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 83.98 * fem, 0.31 * fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupVER (114:2524)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.09 * fem, 0 * fem, 0 * fem),
                          width: 13.61 * fem,
                          height: 16.13 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-F1T.png',
                            width: 13.61 * fem,
                            height: 16.13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalnzD (114:2526)
                    margin: EdgeInsets.fromLTRB(
                        24 * fem, 0 * fem, 27 * fem, 11 * fem),
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 7.36 * fem, 35.61 * fem, 11.33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 5 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // TaZ (114:2529)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.31 * fem, 68.8 * fem, 0 * fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 2 * ffem / fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayBWZ (114:2528)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 83.98 * fem, 0.31 * fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // grouphUu (114:2530)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.09 * fem, 0 * fem, 0 * fem),
                          width: 13.61 * fem,
                          height: 16.13 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group.png',
                            width: 13.61 * fem,
                            height: 16.13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalppR (114:2532)
                    margin: EdgeInsets.fromLTRB(
                        24 * fem, 0 * fem, 27 * fem, 11 * fem),
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 7.36 * fem, 35.61 * fem, 11.33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 5 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // Vff (114:2535)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.31 * fem, 68.8 * fem, 0 * fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 2 * ffem / fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayR3X (114:2534)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 83.98 * fem, 0.31 * fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group8Tj (114:2536)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.09 * fem, 0 * fem, 0 * fem),
                          width: 13.61 * fem,
                          height: 16.13 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-AU9.png',
                            width: 13.61 * fem,
                            height: 16.13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalRxd (114:2538)
                    margin: EdgeInsets.fromLTRB(
                        24 * fem, 0 * fem, 27 * fem, 11 * fem),
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 7.36 * fem, 35.61 * fem, 11.33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 5 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 6Yy (114:2541)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.31 * fem, 68.8 * fem, 0 * fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 2 * ffem / fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdaypjs (114:2540)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 83.98 * fem, 0.31 * fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupjM3 (114:2542)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.09 * fem, 0 * fem, 0 * fem),
                          width: 13.61 * fem,
                          height: 16.13 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-Pgu.png',
                            width: 13.61 * fem,
                            height: 16.13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalFaH (114:2544)
                    margin: EdgeInsets.fromLTRB(
                        24 * fem, 0 * fem, 27 * fem, 11 * fem),
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 7.36 * fem, 35.61 * fem, 11.33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 5 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 7cV (114:2547)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.31 * fem, 68.8 * fem, 0 * fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 2 * ffem / fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdaySem (114:2546)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 83.98 * fem, 0.31 * fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupMWq (114:2548)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.09 * fem, 0 * fem, 0 * fem),
                          width: 13.61 * fem,
                          height: 16.13 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-P8m.png',
                            width: 13.61 * fem,
                            height: 16.13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalGNu (114:2550)
                    margin: EdgeInsets.fromLTRB(
                        22 * fem, 0 * fem, 29 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 7.36 * fem, 35.61 * fem, 11.33 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 5 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // uAy (114:2553)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.31 * fem, 68.8 * fem, 0 * fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 2 * ffem / fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayd6y (114:2552)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 83.98 * fem, 0.31 * fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupLGH (114:2554)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.09 * fem, 0 * fem, 0 * fem),
                          width: 13.61 * fem,
                          height: 16.13 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-qRK.png',
                            width: 13.61 * fem,
                            height: 16.13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame11qyj (114:2556)
              width: double.infinity,
              height: 108 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30 * fem),
                  topRight: Radius.circular(30 * fem),
                  bottomRight: Radius.circular(18 * fem),
                  bottomLeft: Radius.circular(18 * fem),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle15mMb (114:2557)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 428 * fem,
                        height: 108 * fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-15-Qvd.png',
                          width: 428 * fem,
                          height: 108 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34027sfX (114:2558)
                    left: 22.8000488281 * fem,
                    top: 20 * fem,
                    child: Container(
                      width: 396.9 * fem,
                      height: 70 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupvje1bLd (2TmYxJur2A1b2zaNVdVJe1)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 18.22 * fem, 29.9 * fem, 3.78 * fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // heZ (114:2559)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 45.1 * fem, 0 * fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // vectorSMF (114:2560)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-2gq.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                      Text(
                                        // profile9mT (114:2561)
                                        'Profile',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 13 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff071590),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // tU9 (114:2562)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // calendar3rq (114:2563)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0.8 * fem, 4.22 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/calendar-hBf.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                      Text(
                                        // walletZaH (114:2565)
                                        'Wallet',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 13 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
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
                            // homeWEd (114:2567)
                            width: 70 * fem,
                            height: 70 * fem,
                            child: Image.asset(
                              'assets/page-1/images/home-KNR.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // autogroupucehebj (2TmZ6iqVgW9Xxh3pjauceh)
                            padding: EdgeInsets.fromLTRB(
                                26.3 * fem, 18.22 * fem, 0 * fem, 7.78 * fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // BLm (114:2568)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 26.6 * fem, 0 * fem),
                                  width: 49 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // cahtKC5 (114:2569)
                                        margin: EdgeInsets.fromLTRB(12.9 * fem,
                                            0 * fem, 12.1 * fem, 4.22 * fem),
                                        width: double.infinity,
                                        child: Center(
                                          // setting14fT (114:2570)
                                          child: SizedBox(
                                            width: 24 * fem,
                                            height: 24 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/setting-1-hqs.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // settigns14u (114:2571)
                                        'Settigns',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3333333333 * ffem / fem,
                                          color: Color(0xff071590),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // k2V (114:2572)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // alarmbell1hiR (114:2573)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/alarm-bell-1-KCd.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // natificationpY9 (114:2574)
                                        'Natification',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3333333333 * ffem / fem,
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
