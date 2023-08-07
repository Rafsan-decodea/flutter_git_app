import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolbusapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 447;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // urbantransportpaperstylearrang (114:1666)
        width: double.infinity,
        height: 926*fem,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18*fem),
          child: Image.asset(
            'assets/page-1/images/urban-transport-paper-style-arrangement-1.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
          );
  }
}