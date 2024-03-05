import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/util/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late StreamSubscription<ConnectivityResult> _onConnectivityChanged;

  @override
  void initState() {
    super.initState();
    _onInitLoad();

  }

  @override
  void dispose() {
    super.dispose();
    _onConnectivityChanged.cancel();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Images.logo, height: 175),
          ],
        ),
      ),
    );
  }

  void _onRoute() {
    Get.find<SplashController>().getConfigData().then((value) {
      if(value.isOk) {
        Timer(const Duration(seconds: 0), () async {
          Get.offNamed(RouteHelper.getLoginRoute(
            countryCode: Get.find<AuthController>().getUserData()?.countryCode,
            phoneNumber: Get.find<AuthController>().getUserData()?.phone,
          ));
        });
      }
    });
  }

  void _onInitLoad(){
    bool firstTime = true;

    _onConnectivityChanged = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if(!firstTime) {
        bool isNotConnected = result != ConnectivityResult.wifi &&
            result != ConnectivityResult.mobile;

        isNotConnected ? const SizedBox() : ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: isNotConnected ? Colors.red : Colors.green,
          duration: Duration(seconds: isNotConnected ? 6000 : 3),
          content: Text(
            isNotConnected ? 'no_connection'.tr : 'connected'.tr,
            textAlign: TextAlign.center,
          ),
        ));
        if(!isNotConnected) {
          _onRoute();
        }
      }
      firstTime = false;

    });

    Get.find<SplashController>().initSharedData();
    _onRoute();
  }

}
