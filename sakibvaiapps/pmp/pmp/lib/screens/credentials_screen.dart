import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pmp/pmp/app.dart';
import 'package:pmp/screens/change_password_screen.dart';
import 'package:pmp/screens/change_username_screen.dart';
import 'package:pmp/screens/settings_screen.dart';

class CredentialsScreen extends StatefulWidget {
  static const String routeName = '${SettingsScreen.routeName}/credentials';

  const CredentialsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CredentialsScreen();
}

class _CredentialsScreen extends State<CredentialsScreen> {
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
        title: const Text('Credentials',
            style: TextStyle(
              color: Color.fromARGB(255, 250, 250, 250),
            )),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.2),
        children: [
          PmpPadding(ThreeWidgetButton(
            right: const Text('Change username'),
            center: Lottie.asset("assets/images/cred.json"),
            onPressed: () =>
                Navigator.pushNamed(context, ChangeUsernameScreen.routeName),
          )),
          PmpPadding(ThreeWidgetButton(
            right: const Text('Change password'),
            center: Lottie.asset("assets/images/pass.json"),
            onPressed: () =>
                Navigator.pushNamed(context, ChangePasswordScreen.routeName),
          )),
        ],
      ),
    );
  }
}
