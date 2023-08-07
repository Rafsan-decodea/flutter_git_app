import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/screens/sign-in.dart';
import 'package:schoolbusapp/utils.dart';

class Welcome extends StatefulWidget {
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
      print("changedpage");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 153;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // welcometoRCM (114:1879)
          width: double.infinity,
          height: 36 * fem,
          child: Text(
            'Welcome to ',
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 24 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.5 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}
