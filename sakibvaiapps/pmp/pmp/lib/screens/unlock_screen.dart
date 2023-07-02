import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pmp/common/common.dart';
import 'package:pmp/db/common.dart';
import 'package:pmp/db/loaded_account.dart';
import 'package:pmp/pmp/app.dart';
import 'package:pmp/screens/login_screen.dart';
import 'package:pmp/screens/main_screen.dart';

import 'common.dart';

class UnlockScreen extends StatefulWidget {
  static const String routeName = '/unlock';

  const UnlockScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UnlockScreen();
}

class _UnlockScreen extends State<UnlockScreen> with WidgetsBindingObserver {
  final LoadedAccount _account = data.loadedAccount!;
  bool _shouldPop = false;
  String _password = '';

  void _logOut() {
    Navigator.popUntil(
        context, (route) => route.settings.name == MainScreen.routeName);
    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    data.unloadAccount();
  }

  Future<bool> _onWillPop() {
    if (_shouldPop) return Future.value(true);
    Navigator.popUntil(context, (route) {
      if (route.settings.name != MainScreen.routeName) return false;
      _logOut();
      return true;
    });
    return Future.value(false);
  }

  void _unlock() {
    if (getHash(_password).toString() ==
        data.getPasswordHash(_account.username)) {
      _shouldPop = true;
      Navigator.pop(context);
      return;
    }
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(children: const [
      Icon(
        Icons.lock_rounded,
        color: PmpTheme.darkContentColor,
      ),
      SizedBox(width: 20),
      Expanded(
          child: Text('Incorrect password',
              style: TextStyle(
                color: Color.fromARGB(255, 250, 250, 250),
              ))),
    ])));
    return;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state != AppLifecycleState.resumed) return;
    if (Platform.isAndroid || Platform.isIOS) {
      if (_account.bioAuthEnabled) {
        if (await bioAuth(_account.username)) {
          _shouldPop = true;
          Navigator.pop(context);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PmpTheme.appbarcolor,
          title: const Text('Unlock',
              style: TextStyle(
                color: Color.fromARGB(255, 250, 250, 250),
              )),
          centerTitle: true,
          leading: IconButton(
            splashRadius: PmpTheme.appBarButtonSplashRadius,
            padding: PmpTheme.appBarButtonPadding,
            icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
            onPressed: _logOut,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    _account.username,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PmpPadding(
                    ButtonedTextFormField(
                      labelText: 'Password',
                      obscureText: true,
                      onChanged: (a) => setState(() => _password = a),
                      onPressed: _unlock,
                      buttonIcon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
