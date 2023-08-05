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
        // paymentcfs (114:2354)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffec635),
          borderRadius: BorderRadius.circular(18*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupzkh79vh (2TmNtBXUv1VD3gKoGkzKH7)
              padding: EdgeInsets.fromLTRB(26*fem, 14*fem, 23.1*fem, 26*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup1s1o53f (2TmNKXoDg8KcTqmuPU1s1o)
                    margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 0.4*fem, 55*fem),
                    width: double.infinity,
                    height: 20*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timeP4M (114:2377)
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
                          // containerbbf (114:2355)
                          margin: EdgeInsets.fromLTRB(0*fem, 4.16*fem, 0*fem, 4.34*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // combinedshapeKGm (114:2363)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.08*fem, 0*fem, 0*fem),
                                width: 17.1*fem,
                                height: 10.7*fem,
                                child: Image.asset(
                                  'assets/page-1/images/combined-shape-vvm.png',
                                  width: 17.1*fem,
                                  height: 10.7*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // wificFs (114:2368)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 0*fem, 0*fem),
                                width: 15.4*fem,
                                height: 11.06*fem,
                                child: Image.asset(
                                  'assets/page-1/images/wi-fi-BBf.png',
                                  width: 15.4*fem,
                                  height: 11.06*fem,
                                ),
                              ),
                              SizedBox(
                                width: 5*fem,
                              ),
                              Container(
                                // batteryiJu (114:2356)
                                width: 24.5*fem,
                                height: 11.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/battery-2uw.png',
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
                    // group34034F3w (114:2372)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorstroken3s (114:2375)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 123*fem, 1.33*fem),
                          width: 10*fem,
                          height: 17.33*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-stroke-Rkm.png',
                            width: 10*fem,
                            height: 17.33*fem,
                          ),
                        ),
                        Container(
                          // paymentHFX (114:2374)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117*fem, 0*fem),
                          child: Text(
                            'Payment',
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
                          // vectorbX7 (114:2373)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.33*fem),
                          width: 15.9*fem,
                          height: 17.67*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-vru.png',
                            width: 15.9*fem,
                            height: 17.67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupixj9i5w (2TmNVn19aZzaSd3XwPixJ9)
                    margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 161.65*fem, 27*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorDoP (114:2402)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.25*fem, 0.75*fem),
                          width: 25*fem,
                          height: 21.25*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-QWD.png',
                            width: 25*fem,
                            height: 21.25*fem,
                          ),
                        ),
                        Text(
                          // paymentmethod9BF (114:2401)
                          'Payment method',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 17*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupqtbogS5 (2TmNcSUiHHDBuefdnvQtBo)
                    margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 6.9*fem, 41*fem),
                    width: double.infinity,
                    height: 34*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupdcnhQss (2TmNjGcfYufAZWBPVYDcNh)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 193.75*fem, 0*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // paymentmethod1wso (114:2404)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.25*fem, 0*fem),
                                width: 35*fem,
                                height: 33*fem,
                                child: Image.asset(
                                  'assets/page-1/images/payment-method-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // statusfJ1 (114:2403)
                                margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Status',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 17*ffem,
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
                          // onbutton1NiD (114:2405)
                          width: 56*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/on-button-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // ordersWJd (114:2397)
                    margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 18.9*fem, 15.42*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // ordercardqLu (114:2398)
                          padding: EdgeInsets.fromLTRB(4*fem, 10.4*fem, 4*fem, 17.26*fem),
                          width: 343*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                offset: Offset(0*fem, 1*fem),
                                blurRadius: 12*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupdeyvWT3 (2TmPLfmM9w8HixvYqndEYV)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 6.75*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Center(
                                      // order1947034SLh (I114:2398;484:233)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
                                        child: Text(
                                          'Payment Successful',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff222222),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // date8jK (I114:2398;484:243)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.86*fem),
                                      child: Text(
                                        '05-12-2019',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4285714286*ffem/fem,
                                          color: Color(0xff9b9b9b),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupjawwFJ9 (2TmPSVvy24C5Fs6PTsjAww)
                                margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 16*fem, 10.48*fem),
                                width: double.infinity,
                                height: 41.57*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // quantitykVo (I114:2398;484:234)
                                      left: 5*fem,
                                      top: 17.5740814209*fem,
                                      child: Container(
                                        width: 84*fem,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // quantitys4d (I114:2398;484:235)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0.86*fem),
                                              child: Text(
                                                'Quantity:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              // BLD (I114:2398;484:236)
                                              child: Text(
                                                '3',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w900,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff222222),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // trnumber7Um (I114:2398;484:237)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Container(
                                        width: 239*fem,
                                        height: 20*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // trackingnumberEJV (I114:2398;484:238)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                              child: Text(
                                                'Tracking number:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // iw3475453455wyb (I114:2398;484:239)
                                              'IW3475453455',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.4285714286*ffem/fem,
                                                color: Color(0xff222222),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // totalamounttdw (I114:2398;484:240)
                                      left: 173*fem,
                                      top: 17.5740814209*fem,
                                      child: Container(
                                        width: 137*fem,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // totalamountcpq (I114:2398;484:241)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0.86*fem),
                                              child: Text(
                                                'Total Amount:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // 8oB (I114:2398;484:242)
                                              '112৳‎',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff222222),
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
                                // autogroupw3kqUs3 (2TmPeAGCkJKeKfS4i3w3kq)
                                margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 30.5*fem, 0*fem),
                                width: double.infinity,
                                height: 31.07*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // buttonsecondaryoutlinesmallcCZ (I114:2398;484:231)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 159.5*fem, 0*fem),
                                      width: 98*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff222222)),
                                        borderRadius: BorderRadius.circular(24*fem),
                                      ),
                                      child: Center(
                                        child: Center(
                                          child: Text(
                                            'Details',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.4285714286*ffem/fem,
                                              color: Color(0xff222222),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // deliverede9F (I114:2398;484:232)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.86*fem),
                                        child: Text(
                                          'Paid',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.4285714286*ffem/fem,
                                            color: Color(0xff2aa952),
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
                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(
                          // ordercardieu (114:2399)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(2*fem, 10.4*fem, 2*fem, 17.26*fem),
                          width: 343*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                offset: Offset(0*fem, 1*fem),
                                blurRadius: 12*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupyngdyKw (2TmQ5u2KS6RafEXNyBYNgd)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 6.75*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Center(
                                      // order1947034i2d (I114:2399;484:233)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 78*fem, 0*fem),
                                        child: Text(
                                          'Payment  Successful',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff222222),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // datecNu (I114:2399;484:243)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.86*fem),
                                      child: Text(
                                        '05-12-2019',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4285714286*ffem/fem,
                                          color: Color(0xff9b9b9b),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouprkly8s3 (2TmQBK2xsvQxE4y5yYrKLy)
                                margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 17*fem, 10.48*fem),
                                width: double.infinity,
                                height: 41.57*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // quantityUAD (I114:2399;484:234)
                                      left: 5*fem,
                                      top: 17.5740737915*fem,
                                      child: Container(
                                        width: 84*fem,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // quantityPY5 (I114:2399;484:235)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0.86*fem),
                                              child: Text(
                                                'Quantity:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              // Juw (I114:2399;484:236)
                                              child: Text(
                                                '3',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w900,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff222222),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // trnumberFKP (I114:2399;484:237)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Container(
                                        width: 239*fem,
                                        height: 20*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // trackingnumberNuo (I114:2399;484:238)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                              child: Text(
                                                'Tracking number:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // iw3475453455tNM (I114:2399;484:239)
                                              'IW3475453455',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.4285714286*ffem/fem,
                                                color: Color(0xff222222),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // totalamountpmo (I114:2399;484:240)
                                      left: 173*fem,
                                      top: 17.5740737915*fem,
                                      child: Container(
                                        width: 138*fem,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // totalamountwrR (I114:2399;484:241)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0.86*fem),
                                              child: Text(
                                                'Total Amount:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // U5f (I114:2399;484:242)
                                              '112৳',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff222222),
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
                                // autogroup4c9szZo (2TmQNyNCcAYXHsJmDj4C9s)
                                margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 32.5*fem, 0*fem),
                                width: double.infinity,
                                height: 31.07*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // buttonsecondaryoutlinesmallK6H (I114:2399;484:231)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 159.5*fem, 0*fem),
                                      width: 98*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff222222)),
                                        borderRadius: BorderRadius.circular(24*fem),
                                      ),
                                      child: Center(
                                        child: Center(
                                          child: Text(
                                            'Details',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.4285714286*ffem/fem,
                                              color: Color(0xff222222),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // deliveredMof (I114:2399;484:232)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.86*fem),
                                        child: Text(
                                          'Paid',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.4285714286*ffem/fem,
                                            color: Color(0xff2aa952),
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
                        SizedBox(
                          height: 10*fem,
                        ),
                        Container(
                          // ordercardTLu (114:2400)
                          padding: EdgeInsets.fromLTRB(2*fem, 10.4*fem, 2*fem, 17.26*fem),
                          width: 343*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1e000000),
                                offset: Offset(0*fem, 1*fem),
                                blurRadius: 12*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupckthLfb (2TmQp3Um2Hizt8qU6WCKth)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 6.75*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Center(
                                      // order194703457P (I114:2400;484:233)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 78*fem, 0*fem),
                                        child: Text(
                                          'Payment  Successful',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff222222),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // dateBRK (I114:2400;484:243)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.86*fem),
                                      child: Text(
                                        '05-12-2019',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.4285714286*ffem/fem,
                                          color: Color(0xff9b9b9b),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupgfxzHz9 (2TmQu8AdLHFe5KVsQhGfxZ)
                                margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 17*fem, 10.48*fem),
                                width: double.infinity,
                                height: 41.57*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // quantityR4m (I114:2400;484:234)
                                      left: 5*fem,
                                      top: 17.5740737915*fem,
                                      child: Container(
                                        width: 84*fem,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // quantityYQH (I114:2400;484:235)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0.86*fem),
                                              child: Text(
                                                'Quantity:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              // Tn9 (I114:2400;484:236)
                                              child: Text(
                                                '3',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w900,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff222222),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // trnumberob7 (I114:2400;484:237)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Container(
                                        width: 239*fem,
                                        height: 20*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // trackingnumberXX7 (I114:2400;484:238)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                              child: Text(
                                                'Tracking number:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // iw34754534553VT (I114:2400;484:239)
                                              'IW3475453455',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.4285714286*ffem/fem,
                                                color: Color(0xff222222),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // totalamountBrZ (I114:2400;484:240)
                                      left: 173*fem,
                                      top: 17.5740737915*fem,
                                      child: Container(
                                        width: 138*fem,
                                        height: 24*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // totalamountWdw (I114:2400;484:241)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0.86*fem),
                                              child: Text(
                                                'Total Amount:',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 14*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.4285714286*ffem/fem,
                                                  color: Color(0xff9b9b9b),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // 2MP (I114:2400;484:242)
                                              '112৳',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff222222),
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
                                // autogroupkaerNg9 (2TmR533n6tTsgSzCGSkAeR)
                                margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 32.5*fem, 0*fem),
                                width: double.infinity,
                                height: 31.07*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // buttonsecondaryoutlinesmall6MF (I114:2400;484:231)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 159.5*fem, 0*fem),
                                      width: 98*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff222222)),
                                        borderRadius: BorderRadius.circular(24*fem),
                                      ),
                                      child: Center(
                                        child: Center(
                                          child: Text(
                                            'Details',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.4285714286*ffem/fem,
                                              color: Color(0xff222222),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // deliveredkRo (I114:2400;484:232)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.86*fem),
                                        child: Text(
                                          'Paid',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.4285714286*ffem/fem,
                                            color: Color(0xff2aa952),
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
                      ],
                    ),
                  ),
                  Container(
                    // group34042FtM (114:2406)
                    margin: EdgeInsets.fromLTRB(110*fem, 0*fem, 112.9*fem, 0*fem),
                    width: double.infinity,
                    height: 54*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle4414Pjf (114:2407)
                          left: 0*fem,
                          top: 4*fem,
                          child: Align(
                            child: SizedBox(
                              width: 147*fem,
                              height: 50*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(30*fem),
                                  color: Color(0xff3a5f3b),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // paynowW3b (114:2408)
                          left: 27*fem,
                          top: 16*fem,
                          child: Align(
                            child: SizedBox(
                              width: 74*fem,
                              height: 26*fem,
                              child: Text(
                                'Pay Now',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 17*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // money1c6d (114:2409)
                          left: 108*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 48*fem,
                              height: 48*fem,
                              child: Image.asset(
                                'assets/page-1/images/money-1.png',
                                fit: BoxFit.cover,
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
            Container(
              // frame11iQZ (114:2378)
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
                    // rectangle15qVB (114:2379)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 108*fem,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-15-hhB.png',
                          width: 428*fem,
                          height: 108*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34027kc9 (114:2380)
                    left: 22.7998046875*fem,
                    top: 20*fem,
                    child: Container(
                      width: 396.9*fem,
                      height: 70*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupi9idUHF (2TmT3PvtiwA9KHrenWi9id)
                            padding: EdgeInsets.fromLTRB(0*fem, 18.22*fem, 29.9*fem, 3.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // 12H (114:2381)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 45.1*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // vectorwRj (114:2382)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-ebK.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // profiles4V (114:2383)
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
                                  // oyj (114:2384)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // calendaryNR (114:2385)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.8*fem, 4.22*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/calendar-gvu.png',
                                          width: 24*fem,
                                          height: 24*fem,
                                        ),
                                      ),
                                      Text(
                                        // wallettEV (114:2387)
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
                            // homeq9j (114:2389)
                            width: 70*fem,
                            height: 70*fem,
                            child: Image.asset(
                              'assets/page-1/images/home-yey.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // autogroupbevhNfT (2TmTCUW6exDYzHtiQpbevH)
                            padding: EdgeInsets.fromLTRB(26.3*fem, 18.22*fem, 0*fem, 7.78*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // JJD (114:2390)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26.6*fem, 0*fem),
                                  width: 49*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // cahtqJ9 (114:2391)
                                        margin: EdgeInsets.fromLTRB(12.9*fem, 0*fem, 12.1*fem, 4.22*fem),
                                        width: double.infinity,
                                        child: Center(
                                          // setting1aWd (114:2392)
                                          child: SizedBox(
                                            width: 24*fem,
                                            height: 24*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/setting-1-xoB.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // settignsi73 (114:2393)
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
                                  // 3v1 (114:2394)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // alarmbell11rq (114:2395)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                        width: 24*fem,
                                        height: 24*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/alarm-bell-1-VgV.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // natificationXqB (114:2396)
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