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
        // report3r5f (114:2678)
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
              // autogroupq2kuYDP (2TmfEdSoFJyUEoESTaq2ku)
              padding: EdgeInsets.fromLTRB(17*fem, 14*fem, 23*fem, 42*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupcknd1Ms (2Tmdnb2VvJDgaESjyaCKnd)
                    margin: EdgeInsets.fromLTRB(20.5*fem, 0*fem, 0.5*fem, 52*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timeVnq (114:2706)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 269*fem, 0*fem),
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
                          // containerb5B (114:2679)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshapeifb (114:2687)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-KcD.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wifiRK7 (114:2692)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-Upy.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryvWm (114:2680)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-u7X.png',
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
                    // group339093bP (114:2701)
                    margin: EdgeInsets.fromLTRB(5.9*fem, 0*fem, 0*fem, 14*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokeNtZ (114:2704)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 143.62*fem, 1.33*fem),
                          width: 9.97*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-F2R.png',
                            width: 9.97*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // reportHVj (114:2703)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 127.45*fem, 0*fem),
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
                          // vectorzQ9 (114:2702)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.86*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-v1X.png',
                            width: 15.86*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group33880un1 (114:2696)
                    margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 199.5*fem, 31*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse5792bj (114:2699)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.5*fem, 0*fem),
                          width: 96*fem,
                          height: 96*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(48*fem),
                            color: Color(0xffd9d9d9),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-1/images/ellipse-579-bg-x4y.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // melisavx1 (114:2700)
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
                    // frame512392SfT (114:2707)
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
                          // selectstudentv4q (114:2708)
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
                          // downbuttonqhb (114:2709)
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/page-1/images/down-button-eZF.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupkaymn73 (2Tme3abWztxZNYbU9WkAYM)
                    margin: EdgeInsets.fromLTRB(97*fem, 0*fem, 91*fem, 22*fem),
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
                  Container(
                    // autogroupbdwdbKP (2TmeHaCCfzKF3uQHEvbDWd)
                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 11*fem),
                    width: 383*fem,
                    height: 313*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // physical5VT (114:2712)
                          left: 2*fem,
                          top: 0*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                            width: 377*fem,
                            height: 43*fem,
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
                                  // vFB (114:2715)
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
                                  // wednesdaypbT (114:2714)
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
                                  // groupgNm (114:2716)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                                  width: 13.61*fem,
                                  height: 16.13*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-6NM.png',
                                    width: 13.61*fem,
                                    height: 16.13*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // physicalC6D (114:2718)
                          left: 2*fem,
                          top: 54*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                            width: 377*fem,
                            height: 43*fem,
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
                                  // FKP (114:2721)
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
                                  // wednesdaym2q (114:2720)
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
                                  // groupTRT (114:2722)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                                  width: 13.61*fem,
                                  height: 16.13*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-uT7.png',
                                    width: 13.61*fem,
                                    height: 16.13*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // physicalAam (114:2724)
                          left: 2*fem,
                          top: 108*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                            width: 377*fem,
                            height: 43*fem,
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
                                  // RWh (114:2727)
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
                                  // wednesdayk3B (114:2726)
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
                                  // groupTTP (114:2728)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                                  width: 13.61*fem,
                                  height: 16.13*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-ktZ.png',
                                    width: 13.61*fem,
                                    height: 16.13*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // physicalAsb (114:2730)
                          left: 2*fem,
                          top: 162*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                            width: 377*fem,
                            height: 43*fem,
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
                                  // qD3 (114:2733)
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
                                  // wednesdayMBP (114:2732)
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
                                  // groupfC5 (114:2734)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                                  width: 13.61*fem,
                                  height: 16.13*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-T93.png',
                                    width: 13.61*fem,
                                    height: 16.13*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // physicalnGh (114:2736)
                          left: 2*fem,
                          top: 216*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                            width: 377*fem,
                            height: 43*fem,
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
                                  // EuP (114:2739)
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
                                  // wednesdayZgm (114:2738)
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
                                  // groupfzh (114:2740)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                                  width: 13.61*fem,
                                  height: 16.13*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-UFK.png',
                                    width: 13.61*fem,
                                    height: 16.13*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // physicalb7f (114:2742)
                          left: 2*fem,
                          top: 270*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(9*fem, 7.36*fem, 35.61*fem, 11.33*fem),
                            width: 377*fem,
                            height: 43*fem,
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
                                  // eLq (114:2745)
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
                                  // wednesdayZyb (114:2744)
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
                                  // group5S9 (114:2746)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                                  width: 13.61*fem,
                                  height: 16.13*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-Jyw.png',
                                    width: 13.61*fem,
                                    height: 16.13*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle4408bQV (114:2754)
                          left: 0*fem,
                          top: 28*fem,
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur (
                              sigmaX: 2*fem,
                              sigmaY: 2*fem,
                            ),
                            child: Align(
                              child: SizedBox(
                                width: 383*fem,
                                height: 285*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    color: Color(0xe8ffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group340255aZ (114:2755)
                          left: 131*fem,
                          top: 259*fem,
                          child: Container(
                            width: 125*fem,
                            height: 41*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff07ac49),
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
                                'Back',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle440971T (114:2758)
                          left: 17*fem,
                          top: 49*fem,
                          child: Align(
                            child: SizedBox(
                              width: 159*fem,
                              height: 85*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18*fem),
                                  color: Color(0xff071590),
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
                          // rectangle4410NTB (114:2759)
                          left: 17*fem,
                          top: 151*fem,
                          child: Align(
                            child: SizedBox(
                              width: 159*fem,
                              height: 85*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18*fem),
                                  color: Color(0xff071590),
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
                          // rectangle4411Fms (114:2760)
                          left: 208*fem,
                          top: 49*fem,
                          child: Align(
                            child: SizedBox(
                              width: 159*fem,
                              height: 85*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18*fem),
                                  color: Color(0xff071590),
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
                          // placeholder18qf (114:2761)
                          left: 31*fem,
                          top: 166*fem,
                          child: Align(
                            child: SizedBox(
                              width: 14.88*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/page-1/images/placeholder-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pmep1 (114:2762)
                          left: 253*fem,
                          top: 93*fem,
                          child: Align(
                            child: SizedBox(
                              width: 72*fem,
                              height: 27*fem,
                              child: Text(
                                '4:00 PM',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // schoolpickupJtZ (114:2763)
                          left: 245*fem,
                          top: 62*fem,
                          child: Align(
                            child: SizedBox(
                              width: 110*fem,
                              height: 23*fem,
                              child: Text(
                                'School  Pickup',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle4412MM3 (114:2764)
                          left: 208*fem,
                          top: 151*fem,
                          child: Align(
                            child: SizedBox(
                              width: 159*fem,
                              height: 85*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(18*fem),
                                  color: Color(0xff071590),
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
                          // schooldropcnm (114:2765)
                          left: 245*fem,
                          top: 161*fem,
                          child: Align(
                            child: SizedBox(
                              width: 96*fem,
                              height: 23*fem,
                              child: Text(
                                'School  Drop',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // homepickupXPw (114:2766)
                          left: 52*fem,
                          top: 62*fem,
                          child: Align(
                            child: SizedBox(
                              width: 104*fem,
                              height: 23*fem,
                              child: Text(
                                'Home  Pickup',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // clock112bb (114:2768)
                          left: 31*fem,
                          top: 68*fem,
                          child: Align(
                            child: SizedBox(
                              width: 14*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/page-1/images/clock-1-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // clock12AC1 (114:2769)
                          left: 223*fem,
                          top: 67*fem,
                          child: Align(
                            child: SizedBox(
                              width: 14*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/page-1/images/clock-1-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // amgAM (114:2770)
                          left: 56*fem,
                          top: 94*fem,
                          child: Align(
                            child: SizedBox(
                              width: 68*fem,
                              height: 27*fem,
                              child: Text(
                                '8:15 AM',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pmnjB (114:2771)
                          left: 58*fem,
                          top: 194*fem,
                          child: Align(
                            child: SizedBox(
                              width: 71*fem,
                              height: 27*fem,
                              child: Text(
                                '4:30 PM',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // amJSd (114:2772)
                          left: 256*fem,
                          top: 194*fem,
                          child: Align(
                            child: SizedBox(
                              width: 73*fem,
                              height: 27*fem,
                              child: Text(
                                '9:00 AM',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // homedropDJh (114:2773)
                          left: 53*fem,
                          top: 159*fem,
                          child: Align(
                            child: SizedBox(
                              width: 89*fem,
                              height: 23*fem,
                              child: Text(
                                'Home  Drop',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // placeholder2X4V (114:2774)
                          left: 223*fem,
                          top: 166*fem,
                          child: Align(
                            child: SizedBox(
                              width: 14.88*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/page-1/images/placeholder-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // physicalr6m (114:2748)
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
                          // JDf (114:2751)
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
                          // wednesday2QZ (114:2750)
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
                          // groupjJy (114:2752)
                          margin: EdgeInsets.fromLTRB(0*fem, 1.09*fem, 0*fem, 0*fem),
                          width: 13.61*fem,
                          height: 16.13*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-Zs7.png',
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
              // frame12Sz5 (114:2775)
              padding: EdgeInsets.fromLTRB(22.8*fem, 20*fem, 8.3*fem, 18*fem),
              width: double.infinity,
              height: 108*fem,
              decoration: BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/rectangle-15-Zds.png',
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
                // group340278c1 (114:2777)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup92nqspV (2Tmhqimi1iynXhyH6c92Nq)
                      padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // 1Qu (114:2778)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorkNV (114:2779)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-dNH.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // profileGbj (114:2780)
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
                            // pNM (114:2781)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // calendarNuf (114:2782)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/calendar-7jF.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // wallethBF (114:2784)
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
                      // home2UR (114:2786)
                      width: 70*fem,
                      height: 70*fem,
                      child: Image.asset(
                        'assets/page-1/images/home-nNM.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogrouppxkbAqX (2Tmi1DVtN37cAmjULdpXKb)
                      padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // VN1 (114:2787)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                            width: 49*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // caht2cq (114:2788)
                                  margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                  width: double.infinity,
                                  child: Center(
                                    // setting1Ngh (114:2789)
                                    child: SizedBox(
                                      width: 24*fem,
                                      height: 24*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/setting-1-U5w.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // settignsiVf (114:2790)
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
                            // Ti9 (114:2791)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // alarmbell1DxD (114:2792)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/alarm-bell-1-JLq.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // natification8ZP (114:2793)
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