import 'dart:io';

import 'package:flutter/material.dart';

import 'package:pmp/common/common.dart';
import 'package:pmp/db/loaded_account.dart';
import 'package:pmp/pmp/app.dart';
import 'package:pmp/pmp/widgets/threewidgetbtn2.dart';
import 'package:pmp/screens/splash_screen.dart';
import 'package:flutter_secure_screen/flutter_secure_screen.dart';

import 'biometric_auth_screen.dart';

class SecurityScreen extends StatefulWidget {
  static const routeName = '/security';

  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SecurityScreen();
}

class _SecurityScreen extends State<SecurityScreen> {
  final LoadedAccount loadedAccount = data.loadedAccount!;

  void setProtectScreen(bool value) {
    setState(() {
      loadedAccount.protectScreen = value;
    });
    FlutterSecureScreen.singleton
        .setAndroidScreenSecure(loadedAccount.protectScreen);
    loadedAccount.saveSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PmpTheme.appbarcolor,
        leading: IconButton(
          padding: PmpTheme.appBarButtonPadding,
          splashRadius: PmpTheme.appBarButtonSplashRadius,
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Security',
            style: TextStyle(
              color: Color.fromARGB(255, 250, 250, 250),
            )),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          if (Platform.isAndroid || Platform.isIOS)
            PmpPadding(ThreeWidgetBtn2(
              center: const Text('Biometric authentication'),
              left: const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(Icons.fingerprint_rounded),
              ),
              right: const Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
                Navigator.pushNamed(context, SplashScreen.routeName);
                Navigator.pushReplacementNamed(
                    context, BiometricAuthScreen.routeName);
              },
            )),
          if (Platform.isAndroid)
            PmpPadding(ThreeWidgetBtn2(
              center: const Text('Protect screen'),
              left: const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(Icons.smart_display),
              ),
              right: Switch(
                value: loadedAccount.protectScreen,
                onChanged: (value) => setProtectScreen(value),
              ),
              onPressed: () => setProtectScreen(!loadedAccount.protectScreen),
            )),
        ],
      ),
    );
  }
}
