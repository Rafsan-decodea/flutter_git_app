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
        // settingsbhs (114:3010)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup2nbfXrR (2TmoSJwrszV3iajDi22Nbf)
              padding: EdgeInsets.fromLTRB(28*fem, 14*fem, 19*fem, 111*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupsrjz45f (2Tmn1mV4fEoYjSxPqoSrJZ)
                    margin: EdgeInsets.fromLTRB(4.5*fem, 0*fem, 4.5*fem, 52*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timeyCd (114:3042)
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
                          // container3yB (114:3011)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshapeaTK (114:3019)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-ygV.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wififjf (114:3024)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-Lgq.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryBCD (114:3012)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-3Bw.png',
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
                    // group33909ue1 (114:3033)
                    margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 5.1*fem, 28*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstrokedpu (114:3036)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 136*fem, 1.33*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-Dfw.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // settingsjd3 (114:3035)
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
                          // vectorFrH (114:3034)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-fGV.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup39hfn5X (2TmnBr2bzmF9XQLNYe39Hf)
                    margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 18*fem),
                    width: double.infinity,
                    height: 96*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group33880uR3 (114:3028)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 108.5*fem, 0*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse579qZb (114:3031)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.5*fem, 0*fem),
                                width: 96*fem,
                                height: 96*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(48*fem),
                                  color: Color(0xffd9d9d9),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-1/images/ellipse-579-bg-nqF.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // melisaYiu (114:3032)
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
                          // logout5D3 (114:3037)
                          margin: EdgeInsets.fromLTRB(0*fem, 34*fem, 0*fem, 35*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // logoutouj (114:3038)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                child: Text(
                                  'Log out',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 18*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffe50000),
                                  ),
                                ),
                              ),
                              Container(
                                // logout1Y6d (114:3039)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 18*fem,
                                height: 18*fem,
                                child: Image.asset(
                                  'assets/page-1/images/logout-1.png',
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
                    // group34023fS9 (114:3060)
                    margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 24*fem, 35.5*fem),
                    padding: EdgeInsets.fromLTRB(38*fem, 10*fem, 24*fem, 7*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(63*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupnfhpZXX (2TmpH7ssAu15QWfQgsNFhP)
                          margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 30*fem, 6*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // helpline1hdj (114:3067)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 133*fem, 0*fem),
                                width: 54*fem,
                                height: 54*fem,
                                child: Image.asset(
                                  'assets/page-1/images/helpline-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // phonecall1dXP (114:3066)
                                width: 54*fem,
                                height: 54*fem,
                                child: Image.asset(
                                  'assets/page-1/images/phone-call-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupyqahAXK (2TmpMXvBDDcFrPmCchyQaH)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // helplinevFb (114:3063)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                                child: Text(
                                  'Help Line',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff7d7d7d),
                                  ),
                                ),
                              ),
                              Text(
                                // busmanager3LD (114:3065)
                                'Bus Manager',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff7d7d7d),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupidhxmX7 (2TmnQB1PzgJBLWEfBAiDHX)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                    width: double.infinity,
                    height: 307.5*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // group34020trd (114:3043)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 125*fem, 0*fem),
                          width: 195*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupeudtR5s (2TmndanigZM5ryRgomeUDT)
                                margin: EdgeInsets.fromLTRB(3.75*fem, 0*fem, 0*fem, 42.5*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // vectorLyX (114:3057)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.25*fem, 0*fem),
                                      width: 25*fem,
                                      height: 21.25*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-Yr5.png',
                                        width: 25*fem,
                                        height: 21.25*fem,
                                      ),
                                    ),
                                    Container(
                                      // paymentmethodGMP (114:3049)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.25*fem),
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
                                // autogroupfc9tNvD (2Tmnkq5eNUsUUtfa87FC9T)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 38.86*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // group33899hSh (114:3053)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.38*fem, 0*fem),
                                      width: 30.62*fem,
                                      height: 31.89*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-33899.png',
                                        width: 30.62*fem,
                                        height: 31.89*fem,
                                      ),
                                    ),
                                    Container(
                                      // notifications1iH (114:3045)
                                      margin: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 0*fem, 0*fem),
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
                                // autogroupaj9p8nu (2Tmnrza3NSPzPSciSNaj9P)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 51*fem, 42.17*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // newcontact4wT (114:3059)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                      width: 30*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/new-contact.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // contactusbgV (114:3047)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'Contact Us',
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
                                // autogroupvg9kKMb (2TmnyA4SNPvWHzZrkdvG9K)
                                margin: EdgeInsets.fromLTRB(2.92*fem, 0*fem, 36*fem, 39.17*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // vectorTCu (114:3052)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25.42*fem, 0*fem),
                                      width: 26.67*fem,
                                      height: 26.67*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-mtm.png',
                                        width: 26.67*fem,
                                        height: 26.67*fem,
                                      ),
                                    ),
                                    Container(
                                      // privacypolicyB8u (114:3050)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.83*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'Privacy Policy',
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
                              Container(
                                // autogroupzcdb6Wm (2Tmo4EkJgPT9VBEG4pzcDB)
                                margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 67.25*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // userEcy (114:3058)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.75*fem, 0*fem),
                                      width: 30*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/user.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      // aboutusAWd (114:3051)
                                      'About Us',
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
                            ],
                          ),
                        ),
                        Container(
                          // enable1W4h (114:3040)
                          margin: EdgeInsets.fromLTRB(0*fem, 61.5*fem, 0*fem, 0*fem),
                          width: 44*fem,
                          height: 44*fem,
                          child: Image.asset(
                            'assets/page-1/images/enable-1.png',
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
              // frame12RSZ (114:3068)
              padding: EdgeInsets.fromLTRB(22.8*fem, 20*fem, 8.3*fem, 18*fem),
              width: double.infinity,
              height: 108*fem,
              decoration: BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/rectangle-15-SYR.png',
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
                // group3402774V (114:3070)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupf7f3FgV (2TmqUat7qc6QEq2WcfF7f3)
                      padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // ycV (114:3071)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorKRT (114:3072)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-myB.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // profile3MT (114:3073)
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
                            // asB (114:3074)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // calendarkFs (114:3075)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/calendar-qj7.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // walletSuP (114:3077)
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
                      // homePJq (114:3079)
                      width: 70*fem,
                      height: 70*fem,
                      child: Image.asset(
                        'assets/page-1/images/home-bDT.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroupv1krKiH (2TmqeASVUNquUJjXnEV1kR)
                      padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // riD (114:3080)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                            width: 49*fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // cahtnrm (114:3081)
                                  margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                  width: double.infinity,
                                  child: Center(
                                    // setting1jn1 (114:3082)
                                    child: SizedBox(
                                      width: 24*fem,
                                      height: 24*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/setting-1-xWu.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // settignsUUh (114:3083)
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
                            // DhB (114:3084)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // alarmbell1PLm (114:3085)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/alarm-bell-1-7NH.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // natificationiP3 (114:3086)
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