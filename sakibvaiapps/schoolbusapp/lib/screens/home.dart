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
        // homeqJ1 (114:1882)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupcjvhYy7 (2Tm62fcGYZHhnUWnu3CJvh)
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37.84*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupavxxVNZ (2Tm365qqNmKeexacEhAvXX)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 64*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 23*fem, 20.5*fem, 11*fem),
                    width: 425*fem,
                    height: 408*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfffec635),
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupqpg1m5B (2Tm3JVepf8zN4URinmQPg1)
                          margin: EdgeInsets.fromLTRB(12.5*fem, 0*fem, 0*fem, 31*fem),
                          width: double.infinity,
                          height: 20*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // timegT3 (114:1909)
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
                                // containernky (114:1886)
                                margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // combinedshapeXCm (114:1894)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                      width: 17.1*fem,
                                      height: 10.7*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/combined-shape-4vV.png',
                                        width: 17.1*fem,
                                        height: 10.7*fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5*fem,
                                    ),
                                    Container(
                                      // wifiDLV (114:1899)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                      width: 15.4*fem,
                                      height: 11.06*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/wi-fi-nRX.png',
                                        width: 15.4*fem,
                                        height: 11.06*fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5*fem,
                                    ),
                                    Container(
                                      // batteryuz1 (114:1887)
                                      width: 24.5*fem,
                                      height: 11.5*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/battery-D13.png',
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
                          // autogroup2gzh3qK (2Tm3VKg7Yny7C9K8oW2Gzh)
                          margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 7.6*fem, 44*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group33880Bgd (114:1948)
                                margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 79.5*fem, 0*fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ellipse579v8R (114:1951)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.5*fem, 0*fem),
                                      width: 96*fem,
                                      height: 96*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(48*fem),
                                        color: Color(0xffd9d9d9),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: AssetImage (
                                            'assets/page-1/images/ellipse-579-bg-pUh.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // welcomemelisapUh (114:1952)
                                      margin: EdgeInsets.fromLTRB(0*fem, 18*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'Welcome Melisa!',
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
                                // vectorX8D (114:1903)
                                width: 15.9*fem,
                                height: 17.67*fem,
                                child: Image.asset(
                                  'assets/page-1/images/vector-Ufj.png',
                                  width: 15.9*fem,
                                  height: 17.67*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // offwhenyouorderthreerideseid (114:1885)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            '30% off when you order three rides',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // validtilljune52024Zah (114:1884)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                          child: Text(
                            'Valid till June 5, 2024',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupgb65t7B (2Tm3euEVBZicRd29y5GB65)
                          margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 5.5*fem, 0*fem),
                          width: double.infinity,
                          height: 100*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup6vztbXP (2Tm3jebaMinXF9uFb66vZT)
                                margin: EdgeInsets.fromLTRB(0*fem, 43*fem, 103*fem, 23*fem),
                                padding: EdgeInsets.fromLTRB(29.03*fem, 7.49*fem, 28.9*fem, 6.51*fem),
                                width: 174*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(40*fem),
                                ),
                                child: Container(
                                  // group33940h4d (114:1905)
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // ordernoweEm (114:1907)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.84*fem, 0*fem),
                                        child: Text(
                                          'Order now',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff0040dd),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // vectorxmF (114:1906)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.46*fem, 0*fem, 0*fem),
                                        width: 17.24*fem,
                                        height: 17.24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-UeV.png',
                                          width: 17.24*fem,
                                          height: 17.24*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // unnamed1removebgpreview2ghF (114:1953)
                                width: 100*fem,
                                height: 100*fem,
                                child: Image.asset(
                                  'assets/page-1/images/unnamed1-removebg-preview-2-Knh.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame512393Dx5 (114:1954)
                    margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 15*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(5*fem, 0*fem, 5*fem, 0*fem),
                    width: double.infinity,
                    height: 142*fem,
                    decoration: BoxDecoration (
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Container(
                      // frame34041WgH (114:1955)
                      padding: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupycyk3AR (2Tm6peHfBrtXJNJtVPYcyK)
                            padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 19*fem, 17*fem),
                            width: 166*fem,
                            height: double.infinity,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // report1iXT (114:1963)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 16*fem),
                                  width: 70*fem,
                                  height: 70*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/report-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // studentreportcsj (114:1960)
                                  'Student Report',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff131313),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 21*fem,
                          ),
                          Container(
                            // autogroupnx1bjhT (2Tm6wPbRB2ipMospGTnx1b)
                            padding: EdgeInsets.fromLTRB(19*fem, 11*fem, 18*fem, 23*fem),
                            width: 166*fem,
                            height: double.infinity,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // livestreaming1Cb3 (114:1965)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 11*fem),
                                  width: 70*fem,
                                  height: 70*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/live-streaming-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // livewatching7xu (114:1961)
                                  'Live Watching',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff131313),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 21*fem,
                          ),
                          Container(
                            // autogroupa5ru3Lm (2Tm73UFctXdefwt8fBa5ru)
                            padding: EdgeInsets.fromLTRB(30*fem, 11*fem, 19*fem, 23*fem),
                            width: 167*fem,
                            height: double.infinity,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // bus1hgD (114:1966)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                  width: 70*fem,
                                  height: 70*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/bus-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // bustrackingEAM (114:1962)
                                  'Bus Tracking',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff131313),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 21*fem,
                          ),
                          Container(
                            // autogrouperqyMVs (2Tm79PFS37K7oFzoCpERQy)
                            padding: EdgeInsets.fromLTRB(52*fem, 12*fem, 31*fem, 16*fem),
                            width: 166*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(18*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // cashlesspayment1EZf (114:1964)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 17*fem),
                                  width: 70*fem,
                                  height: 70*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/cashless-payment-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // paymentMeH (114:1967)
                                  'Payment',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff131313),
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
            Container(
              // autogroupjqswVkV (2Tm4Ey64FFLp6Ue6YcjQsw)
              width: double.infinity,
              height: 283.16*fem,
              child: Stack(
                children: [
                  Positioned(
                    // frame103n1 (114:1910)
                    left: 0*fem,
                    top: 175.1575927734*fem,
                    child: Container(
                      width: 428*fem,
                      height: 108*fem,
                      decoration: BoxDecoration (
                        image: DecorationImage (
                          fit: BoxFit.cover,
                          image: AssetImage (
                            'assets/page-1/images/rectangle-15-Dfo.png',
                          ),
                        ),
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
                            // group34027Jhw (114:1912)
                            left: 22.8000488281*fem,
                            top: 20*fem,
                            child: Container(
                              width: 396.9*fem,
                              height: 70*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupevup289 (2Tm4RdSxZz6C3KdriGEVuP)
                                    padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // L8q (114:1913)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // vectorTz9 (114:1914)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                width: 24*fem,
                                                height: 24*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-dCV.png',
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                ),
                                              ),
                                              Text(
                                                // profileBfF (114:1915)
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
                                          // LHF (114:1916)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // calendarVfw (114:1917)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                                width: 24*fem,
                                                height: 24*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/calendar-aVw.png',
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                ),
                                              ),
                                              Text(
                                                // walletcVf (114:1919)
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
                                    // homex3j (114:1921)
                                    width: 70*fem,
                                    height: 70*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/home-cdX.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // autogroupycudtxy (2Tm4Znt2NxP6BnGqBaycUD)
                                    padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // RCD (114:1922)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                          width: 49*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // cahtZJR (114:1923)
                                                margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                                width: double.infinity,
                                                child: Center(
                                                  // setting1u7P (114:1924)
                                                  child: SizedBox(
                                                    width: 24*fem,
                                                    height: 24*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/setting-1-DDB.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // settignsdJH (114:1925)
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
                                          // 9Gd (114:1926)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // alarmbell1V5b (114:1927)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                width: 24*fem,
                                                height: 24*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/alarm-bell-1-auo.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                // natification1Jq (114:1928)
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
                          Positioned(
                            // frame11kGR (114:1929)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(22.8*fem, 20*fem, 8.3*fem, 18*fem),
                              width: 428*fem,
                              height: 108*fem,
                              decoration: BoxDecoration (
                                image: DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/page-1/images/rectangle-15-Dn1.png',
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
                                // group34027Cu7 (114:1931)
                                width: double.infinity,
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupawt7kQq (2Tm54MtkiMQEhPWEqDaWT7)
                                      padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            // 5i1 (114:1932)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // vectorchw (114:1933)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/vector-bCD.png',
                                                    width: 24*fem,
                                                    height: 24*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // profilejXf (114:1934)
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
                                            // stm (114:1935)
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // calendarSS5 (114:1936)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/calendar-Nvm.png',
                                                    width: 24*fem,
                                                    height: 24*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // walletMZ3 (114:1938)
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
                                      // homeV9T (114:1940)
                                      width: 70*fem,
                                      height: 70*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/home-w6Z.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // autogroupera5dFf (2Tm5CGqEfwr64cJjXueRa5)
                                      padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // kbB (114:1941)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                            width: 49*fem,
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // cahtHr1 (114:1942)
                                                  margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                                  width: double.infinity,
                                                  child: Center(
                                                    // setting1F29 (114:1943)
                                                    child: SizedBox(
                                                      width: 24*fem,
                                                      height: 24*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/setting-1-gvD.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // settignsnGy (114:1944)
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
                                            // XkM (114:1945)
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // alarmbell1h93 (114:1946)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                  child: Image.asset(
                                                    'assets/page-1/images/alarm-bell-1.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Text(
                                                  // natificationpjT (114:1947)
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group34041MzH (114:1968)
                    left: 62*fem,
                    top: 0*fem,
                    child: Container(
                      width: 320.3*fem,
                      height: 182.62*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // ellipse6gFs (114:1969)
                            left: 207.9438476562*fem,
                            top: 70.2591094971*fem,
                            child: Align(
                              child: SizedBox(
                                width: 112.36*fem,
                                height: 112.36*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ellipse-6.png',
                                  width: 112.36*fem,
                                  height: 112.36*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // frame10nJu (114:1970)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              width: 264.65*fem,
                              height: 147.14*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(25*fem),
                                gradient: LinearGradient (
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[Color(0x66ffffff), Color(0x02ffffff)],
                                  stops: <double>[0.006, 1],
                                ),
                              ),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur (
                                    sigmaX: 12.5*fem,
                                    sigmaY: 12.5*fem,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group34016oUu (114:1971)
                                        left: 42*fem,
                                        top: 7*fem,
                                        child: Container(
                                          width: 176*fem,
                                          height: 127*fem,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // currentpackagei65 (114:1975)
                                                margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 1*fem),
                                                child: Text(
                                                  'Current Package',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff131313),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // standardqAh (114:1972)
                                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 8*fem),
                                                child: Text(
                                                  'Standard',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff008000),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // nextpaymentdateZcV (114:1976)
                                                'Next Payment Date',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 18*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff131313),
                                                ),
                                              ),
                                              Container(
                                                // june012023hih (114:1973)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                                child: Text(
                                                  'June 01,2023',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff131313),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // lastpaymentapril2023dMT (114:1974)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                child: Text(
                                                  'Last Payment: April 2023',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w300,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff131313),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // rectanglew7F (114:1977)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 264.65*fem,
                                            height: 147.14*fem,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(25*fem),
                                              child: Image.asset(
                                                'assets/page-1/images/rectangle.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
          ],
        ),
      ),
          );
  }
}