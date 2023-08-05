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
        // report2AkH (114:2575)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouph9ch5MT (2TmaWr9KUxkcym6Wz5h9Ch)
              padding: EdgeInsets.fromLTRB(17*fem, 14*fem, 23*fem, 42*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupvpehap1 (2TmZjhmsgFJdPzkgdAvpeH)
                    margin: EdgeInsets.fromLTRB(15.5*fem, 0*fem, 0.5*fem, 52*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // time6nM (114:2604)
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
                          // containerbj7 (114:2576)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshapejKX (114:2584)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-KtM.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wifidfo (114:2589)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-u4m.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryjTw (114:2577)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-AaM.png',
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
                    // group33909rYZ (114:2599)
                    margin: EdgeInsets.fromLTRB(4.9*fem, 0*fem, 0*fem, 14*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokenh7 (114:2602)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 144*fem, 1.33*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-oQu.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // reportJ9f (114:2601)
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
                          // vectorQyP (114:2600)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-ZPo.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupxhxsY41 (2TmZxXjqNv3kmaKvnxxHXs)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
                    width: double.infinity,
                    height: 252*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // group33880TAy (114:2593)
                          left: 19*fem,
                          top: 0*fem,
                          child: Container(
                            width: 187.5*fem,
                            height: 96*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // ellipse579B6y (114:2596)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.5*fem, 0*fem),
                                  width: 96*fem,
                                  height: 96*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(48*fem),
                                    color: Color(0xffd9d9d9),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/ellipse-579-bg-D5j.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupomt3skV (2Tma9h5uQQVEGtzeVsomT3)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 82*fem,
                                  height: 53*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // melisa1bo (114:2597)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 64*fem,
                                            height: 30*fem,
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
                                        ),
                                      ),
                                      Positioned(
                                        // editprofile6t9 (114:2598)
                                        left: 0*fem,
                                        top: 29*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 82*fem,
                                            height: 24*fem,
                                            child: Text(
                                              'Edit Profile',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff4d4d4d),
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
                        ),
                        Positioned(
                          // frame5123921ER (114:2605)
                          left: 0*fem,
                          top: 127*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(16*fem, 11.5*fem, 11*fem, 11.5*fem),
                            width: 388*fem,
                            height: 53*fem,
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
                                  // selectstudentGAM (114:2606)
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
                                  // downbuttonNz5 (114:2607)
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/down-button-M5s.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle4405io3 (114:2608)
                          left: 97*fem,
                          top: 210*fem,
                          child: Align(
                            child: SizedBox(
                              width: 200*fem,
                              height: 41*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18*fem),
                                  color: Color(0xffffffff),
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
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // selectstudentnY1 (114:2609)
                          left: 131*fem,
                          top: 217*fem,
                          child: Align(
                            child: SizedBox(
                              width: 133*fem,
                              height: 27*fem,
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
                        ),
                        Positioned(
                          // group34024HDs (114:2652)
                          left: 11*fem,
                          top: 47*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(99*fem, 15*fem, 125*fem, 19*fem),
                            width: 373*fem,
                            height: 205*fem,
                            decoration: BoxDecoration (
                              color: Color(0xddffffff),
                            ),
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur (
                                sigmaX: 2*fem,
                                sigmaY: 2*fem,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // mdsirajulislamvXj (114:2654)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 10*fem),
                                    child: Text(
                                      'Md Sirajul Islam',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3333333333*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // mdtowhidqeh (114:2655)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51*fem, 10*fem),
                                    child: Text(
                                      'Md Towhid',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3333333333*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // mdnahidullahLbT (114:2656)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 15*fem),
                                    child: Text(
                                      'Md Nahid Ullah',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3333333333*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // pujachowdhuryFyK (114:2657)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                    child: Text(
                                      'Puja Chowdhury',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3333333333*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // hasanmahmudB6H (114:2658)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                    child: Text(
                                      'Hasan Mahmud',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.3333333333*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalWGy (114:2610)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 4*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // e1o (114:2613)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.31*fem, 68.8*fem, 0*fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 2*ffem/fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayk4q (114:2612)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.98*fem, 0.31*fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupSTT (114:2614)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-DSy.png',
                            width: 13.61*fem,
                            height: 16.13*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalZ2H (114:2616)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 4*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // Dcd (114:2619)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.31*fem, 68.8*fem, 0*fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 2*ffem/fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayk6m (114:2618)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.98*fem, 0.31*fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group3rZ (114:2620)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-cbB.png',
                            width: 13.61*fem,
                            height: 16.13*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalNtq (114:2622)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 4*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // FBw (114:2625)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.31*fem, 68.8*fem, 0*fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 2*ffem/fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesday9HK (114:2624)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.98*fem, 0.31*fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // grouprhX (114:2626)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-7z9.png',
                            width: 13.61*fem,
                            height: 16.13*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalnLH (114:2628)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 4*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 3X7 (114:2631)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.31*fem, 68.8*fem, 0*fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 2*ffem/fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdaymT7 (114:2630)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.98*fem, 0.31*fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupgKB (114:2632)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-M3X.png',
                            width: 13.61*fem,
                            height: 16.13*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalCHX (114:2634)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 4*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // fB7 (114:2637)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.31*fem, 68.8*fem, 0*fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 2*ffem/fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayBQM (114:2636)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.98*fem, 0.31*fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // groupHiH (114:2638)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-Wqw.png',
                            width: 13.61*fem,
                            height: 16.13*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalQnu (114:2640)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 4*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // Hbo (114:2643)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.31*fem, 68.8*fem, 0*fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 2*ffem/fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdaycPB (114:2642)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.98*fem, 0.31*fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // grouput5 (114:2644)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-Yk1.png',
                            width: 13.61*fem,
                            height: 16.13*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicaldJH (114:2646)
                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 6*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffffffff)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffff7336),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // tk1 (114:2649)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.31*fem, 68.8*fem, 0*fem),
                          child: Text(
                            '2023-04-26',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 2*ffem/fem,
                              color: Color(0xff07ac49),
                            ),
                          ),
                        ),
                        Center(
                          // wednesdayRE9 (114:2648)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.98*fem, 0.31*fem),
                            child: Text(
                              'Wednesday',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.3333333333*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group8eM (114:2650)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-pDP.png',
                            width: 13.61*fem,
                            height: 16.13*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame112zd (114:2659)
              padding: EdgeInsets.fromLTRB(22.8*fem, 20*fem, 8.3*fem, 18*fem),
              width: double.infinity,
              height: 108*fem,
              decoration: BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/rectangle-15-TDb.png',
                  ),
                ),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(30*fem),
                  topRight: Radius.circular(30*fem),
                  bottomRight: Radius.circular(18*fem),
                  bottomLeft: Radius.circular(18*fem),
                ),
              ),
              child: Container(
                // group34027uoX (114:2661)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupwn6z3uj (2Tmcj7nvVeBthYpxg1wn6Z)
                      padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // mqj (114:2662)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorX4D (114:2663)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-sv1.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // profile3oF (114:2664)
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
                            // zyP (114:2665)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // calendarMow (114:2666)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/calendar-eW5.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // wallet5jw (114:2668)
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
                      // homeRYu (114:2670)
                      width: 70*fem,
                      height: 70*fem,
                      child: Image.asset(
                        'assets/page-1/images/home-43B.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroup6uehmMs (2TmcuHAf7dFB5v9mJQ6UEH)
                      padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // hFX (114:2671)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                            width: 49*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // caht2Ho (114:2672)
                                  margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                  width: double.infinity,
                                  child: Center(
                                    // setting1a4R (114:2673)
                                    child: SizedBox(
                                      width: 24*fem,
                                      height: 24*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/setting-1-xNu.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // settignsusP (114:2674)
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
                            // FwF (114:2675)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // alarmbell12SD (114:2676)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/alarm-bell-1-zVF.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // natificationkND (114:2677)
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
          );
  }
}