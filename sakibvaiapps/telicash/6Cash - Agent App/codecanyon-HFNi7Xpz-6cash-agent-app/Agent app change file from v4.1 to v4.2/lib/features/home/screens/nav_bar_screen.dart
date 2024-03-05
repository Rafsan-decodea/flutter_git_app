import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/history/controllers/transaction_history_controller.dart';
import 'package:six_cash/features/home/controllers/menu_controller.dart';
import 'package:six_cash/features/home/domain/enums/navbar_type_enum.dart';
import 'package:six_cash/features/home/widgets/bottom_item_widget.dart';
import 'package:six_cash/helper/dialog_helper.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/common/widgets/custom_dialog_widget.dart';
import 'package:six_cash/features/splash/screens/splash_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    super.initState();
    Get.find<MenuItemController>().updateNavbarScreen(NavbarType.homeScreen, isUpdate: false);
  }

  @override
  Widget build(BuildContext context) {
    final TransactionHistoryController transactionHistoryController = Get.find<TransactionHistoryController>();
    return PopScope(
      canPop: false,
      onPopInvoked: (_) => _onWillPop(context),
      child: GetBuilder<MenuItemController>(builder: (menuItemController) {
        return Scaffold(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          body: PageStorage(bucket: bucket, child: menuItemController.getScreenList[menuItemController.getCurrentIndex]),

          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(color: ColorResources.getBlackAndWhite().withOpacity(0.14), blurRadius: 80, offset: const Offset(0, 20)),
                  BoxShadow(color: ColorResources.getBlackAndWhite().withOpacity(0.20), blurRadius: 0.5, offset: const Offset(0, 0)),
                ]),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [

                BottomItemWidget(
                  onTap: (){
                    if(transactionHistoryController.searchText != null &&  (transactionHistoryController.searchText?.isNotEmpty ?? false)) {
                      transactionHistoryController.setSearchText = null;
                      Get.find<TransactionHistoryController>().getTransactionList(1);
                    }
                    menuItemController.updateNavbarScreen(NavbarType.homeScreen);
                  },
                  icon: menuItemController.getCurrentIndex == 0 ? Images.homeIconBold : Images.homeIcon,
                  name: 'home'.tr,
                  selectedIndex: 0,
                ),

                BottomItemWidget(
                  onTap: () => menuItemController.updateNavbarScreen(NavbarType.transactionHistoryScreen),
                  icon: menuItemController.getCurrentIndex == 1 ? Images.clockIconBold : Images.clockIcon,
                  name: 'history'.tr,
                  selectedIndex: 1,
                ),

                BottomItemWidget(
                  onTap: () => menuItemController.updateNavbarScreen(NavbarType.notificationScreen),
                  icon: menuItemController.getCurrentIndex == 2 ? Images.notificationIconBold : Images.notificationIcon,
                  name: 'notification'.tr,
                  selectedIndex: 2,
                ),

                BottomItemWidget(
                  onTap: () => menuItemController.updateNavbarScreen(NavbarType.profileScreen),
                  icon: menuItemController.getCurrentIndex == 3 ? Images.profileIconBold : Images.profileIcon,
                  name: 'profile'.tr,
                  selectedIndex: 3,
                ),

            ]),
          ),
        );
      }),
    );


  }

  void _onWillPop(BuildContext context) {
    DialogHelper.showAnimatedDialog(
      context,
      CustomDialogWidget(
        icon: Icons.exit_to_app_rounded,
        title: 'exit'.tr, description: 'do_you_want_to_exit_the_app'.tr,
        onTapFalse:() => Navigator.of(context).pop(false),
        onTapTrue:()=> SystemNavigator.pop().then((value) => Get.offAll(()=> const SplashScreen())),
        onTapTrueText: 'yes'.tr, onTapFalseText: 'no'.tr,
      ),
      dismissible: false,
      isFlip: true,
    );
  }

}


