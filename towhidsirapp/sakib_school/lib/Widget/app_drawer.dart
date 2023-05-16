import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sakib_school/Utils/colors.dart';
import 'package:sakib_school/pages/Login/view/login_screen.dart';

import '../pages/Home/view/home_screen.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40.h),
      child: ClipPath(
        clipper: LDOvalRightBorderClipper(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Drawer(
          backgroundColor: Colors.amber,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                padding: EdgeInsets.zero,
                child: ListView(
                  children: [
                    DrawerHeader(
                        child: Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Center(child: Text("Logo")),
                    )),
                    ListTile(
                      onTap: () {},
                      title: const Text(
                        'Dashboard',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'Change Password',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text(
                        'LogOut',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onTap: () {
                        Get.offAll(LoginScreen());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAlertDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE

          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30.w, top: 15.h),
                  child: Text(
                    'Do you  want to Logout?',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                // logout();
                // Get.off(LoginPage());
              },
            ),
          ],
        );
      },
    );
  }
}
