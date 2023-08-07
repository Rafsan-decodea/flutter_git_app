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
        // onlinetrackingZVT (114:2295)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup5gvyVP7 (2TmMJeKg3hMyyxTjhn5gvy)
              padding: EdgeInsets.fromLTRB(26*fem, 14*fem, 23.1*fem, 18*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupwd6mcid (2TmL8vmWLdBzcJwzAQwD6M)
                    margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 0.4*fem, 55*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // time8ws (114:2329)
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
                          // containerqbP (114:2307)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshapeNLR (114:2315)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-Ged.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wifi4U9 (114:2320)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-iim.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryZA1 (114:2308)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-L8y.png',
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
                    // group34034tTB (114:2324)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokeSDo (114:2327)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 1.33*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-9vZ.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // bustrackingLa5 (114:2326)
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
                          // vectorroK (114:2325)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-qCd.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup18dkazD (2TmLGqhzJDdqyXkUs718DK)
              width: double.infinity,
              height: 783*fem,
              child: Stack(
                children: [
                  Positioned(
                    // mapXPf (114:2296)
                    left: 21*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(21*fem, 14*fem, 20*fem, 78*fem),
                      width: 385*fem,
                      height: 702*fem,
                      decoration: BoxDecoration (
                        image: DecorationImage (
                          fit: BoxFit.cover,
                          image: AssetImage (
                            'assets/page-1/images/map.png',
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupieszzo3 (2TmLQFfJZ4PbnGt22XieSZ)
                            margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 76*fem, 183.22*fem),
                            width: double.infinity,
                            height: 97.78*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // tocKKX (114:2300)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 18.51*fem),
                                  width: 37*fem,
                                  height: 33.23*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/toc.png',
                                    width: 37*fem,
                                    height: 33.23*fem,
                                  ),
                                ),
                                Container(
                                  // group4e6u (114:2304)
                                  width: 195*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(1000*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x1e000000),
                                        offset: Offset(0*fem, 3*fem),
                                        blurRadius: 4*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        '5 mins',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Roboto',
                                          fontSize: 36*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.1725*ffem/fem,
                                          letterSpacing: 0.8700000048*fem,
                                          color: Color(0xff096f2c),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // bus114wK (114:2353)
                            margin: EdgeInsets.fromLTRB(48.98*fem, 0*fem, 0*fem, 152.02*fem),
                            width: 50.98*fem,
                            height: 50.98*fem,
                            child: Image.asset(
                              'assets/page-1/images/bus-1-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // group3C1w (114:2349)
                            padding: EdgeInsets.fromLTRB(75*fem, 15.5*fem, 77*fem, 28.5*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xf26787f6),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // nextstopagehzH (114:2351)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 24*fem),
                                    child: Text(
                                      'Next Stopage',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Roboto',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.1725*ffem/fem,
                                        letterSpacing: 0.8700000048*fem,
                                        color: Color(0xff242121),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  // chawakbazar1EH (114:2352)
                                  child: Text(
                                    'Chawakbazar',
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // frame11XiR (114:2330)
                    left: 0*fem,
                    top: 675*fem,
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
                            // rectangle15dmT (114:2331)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 428*fem,
                                height: 108*fem,
                                child: Image.asset(
                                  'assets/page-1/images/rectangle-15-kDo.png',
                                  width: 428*fem,
                                  height: 108*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // group34027wGM (114:2332)
                            left: 22.7998046875*fem,
                            top: 20*fem,
                            child: Container(
                              width: 396.9*fem,
                              height: 70*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroup3d3bSyo (2TmLmKtXMA3Jtj34bC3d3b)
                                    padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // yiq (114:2333)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // vectorWCy (114:2334)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                width: 24*fem,
                                                height: 24*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-AhP.png',
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                ),
                                              ),
                                              Text(
                                                // profiledYV (114:2335)
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
                                          // Zh3 (114:2336)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // calendarj5j (114:2337)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                                width: 24*fem,
                                                height: 24*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/calendar-AVP.png',
                                                  width: 24*fem,
                                                  height: 24*fem,
                                                ),
                                              ),
                                              Text(
                                                // walletqeZ (114:2339)
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
                                    // homenJu (114:2341)
                                    width: 70*fem,
                                    height: 70*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/home-utV.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // autogroupz91wXXP (2TmLu9zp2HsUfXtjNLZ91w)
                                    padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // TR3 (114:2342)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                          width: 49*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // cahtBrq (114:2343)
                                                margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                                width: double.infinity,
                                                child: Center(
                                                  // setting1jdT (114:2344)
                                                  child: SizedBox(
                                                    width: 24*fem,
                                                    height: 24*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/setting-1-sLm.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // settignsfX7 (114:2345)
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
                                          // QzV (114:2346)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // alarmbell1mq3 (114:2347)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                width: 24*fem,
                                                height: 24*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/alarm-bell-1-GjT.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                // natificationhTo (114:2348)
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
          ],
        ),
      ),
          );
  }
}