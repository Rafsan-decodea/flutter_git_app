import 'package:flutter/material.dart';
import 'package:schoolbusapp/screens/home.dart';
import 'package:schoolbusapp/screens/login.dart';
import 'package:schoolbusapp/screens/report1.dart';
import 'package:schoolbusapp/screens/report2.dart';
import 'package:schoolbusapp/screens/sign-in.dart';
import 'package:schoolbusapp/screens/sign-up.dart';
import 'package:schoolbusapp/screens/started-page.dart';
import 'package:schoolbusapp/screens/welcome-to.dart';
import 'dart:ui';
import 'package:schoolbusapp/utils.dart';
import 'package:schoolbusapp/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: SplashScreen(),
        ),
      ),
    );
  }
}
