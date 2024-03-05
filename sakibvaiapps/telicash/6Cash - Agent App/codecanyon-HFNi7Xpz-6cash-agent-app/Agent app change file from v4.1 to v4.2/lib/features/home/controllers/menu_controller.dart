import 'package:six_cash/features/history/screens/transaction_history_screen.dart';
import 'package:six_cash/features/home/domain/enums/navbar_type_enum.dart';
import 'package:six_cash/features/home/screens/home_screen.dart';
import 'package:six_cash/features/notification/screens/notification_screen.dart';
import 'package:six_cash/features/profile/screens/profile_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuItemController extends GetxController implements GetxService{

  int _currentIndex = 0;

  final List<Widget> _screenList = [
    const HomeScreen(),
    const TransactionHistoryScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  List<Widget> get getScreenList => _screenList;
  int get getCurrentIndex => _currentIndex;


  void updateNavbarScreen(NavbarType navbarType, {bool isUpdate = true}){
    _currentIndex = _getNavbarIndex(navbarType);

    if(isUpdate) {
      update();
    }


  }

  int _getNavbarIndex(NavbarType navbarType) {
    switch(navbarType) {
      case NavbarType.homeScreen:
        return 0;
      case NavbarType.transactionHistoryScreen:
        return 1;
      case NavbarType.notificationScreen:
        return 2;
      case NavbarType.profileScreen:
        return 3;
    }
  }

}
