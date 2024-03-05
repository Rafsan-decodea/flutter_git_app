import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/home/controllers/banner_controller.dart';
import 'package:six_cash/features/notification/controllers/notification_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/requested_money/controllers/requested_money_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/transaction_controller.dart';
import 'package:six_cash/features/history/controllers/transaction_history_controller.dart';
import 'package:six_cash/features/home/controllers/websitelink_controller.dart';
import 'package:six_cash/features/home/widgets/home_appbar_widget.dart';
import 'package:six_cash/features/home/widgets/expandable_contant_widget.dart';
import 'package:six_cash/features/home/widgets/persistent_header_widget.dart';
import 'package:six_cash/features/home/widgets/theme_one_widget.dart';

import '../widgets/linked_website_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    _loadData(context, false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HomeAppbarWidget(),
      body: ExpandableBottomSheet(
          enableToggle: true,
          background: RefreshIndicator(
            onRefresh: () async {
              await _loadData(context, true);
            },
            child: const SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  ThemeOneWidget(),
                  SizedBox(height: 10),

                  LinkedWebsiteWidget(),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
          persistentContentHeight: 70,
          persistentHeader: const PersistentHeaderWidget(),
          expandableContent: const ExpandableContentWidget()
      ),
    );
  }

  Future<void> _loadData(BuildContext context, bool reload) async {
    final TransactionHistoryController transactionHistoryController = Get.find<TransactionHistoryController>();

    if(reload){
      Get.find<SplashController>().getConfigData();
    }
    Get.find<ProfileController>().profileData(reload: reload);
    Get.find<BannerController>().getBannerList(reload);
    Get.find<RequestedMoneyController>().getRequestedMoneyList(reload: reload);

    if(transactionHistoryController.transactionModel == null || reload) {
      transactionHistoryController.getTransactionList(1, isUpdate: reload);
    }

    Get.find<WebsiteLinkController>().getWebsiteList(reload: reload);
    Get.find<NotificationController>().getNotificationList(reload);
    if(reload) {
      Get.find<SplashController>().getConfigData();
      Get.find<TransactionMoneyController>().getWithdrawMethods(isReload: true);
    }



  }


}

