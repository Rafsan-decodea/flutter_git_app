import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
class PriceConverter {
  static String convertPrice(double? price, {double? discount, String? discountType, int asFixed = 2}) {
    if(discount != null && discountType != null){
      if(discountType == 'amount') {
        price = price! - discount;
      }else if(discountType == 'percent') {
        price = price! - ((discount / 100) * price);
      }
    }
    return  Get.find<SplashController>().configModel!.currencyPosition == 'left' ? '${Get.find<SplashController>().configModel!.currencySymbol}${price!.toStringAsFixed(asFixed).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}' :
    '${price!.toStringAsFixed(asFixed).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}''${Get.find<SplashController>().configModel!.currencySymbol}';
  }

  static double convertWithDiscount(BuildContext context, double price, double discount, String discountType) {
    if(discountType == 'amount') {
      price = price - discount;
    }else if(discountType == 'percent') {
      price = price - ((discount / 100) * price);
    }
    return price;
  }

  static double calculation(double? amount, double? discount, bool isPercent) {
    double? calculatedAmount = 0;

    if(isPercent){
      calculatedAmount = (discount! / 100) * amount!;
    }else{
      calculatedAmount = discount;
    }
    return calculatedAmount!;
  }

  static String percentageCalculation(BuildContext context, String price, String discount, String discountType) {
    return '$discount${discountType == 'percent' ? '%' : '\$'} OFF';
  }

  static double balanceWithCharge(double? amount, double? charge, bool isPercent){
    double newBalance = 0;
    if(isPercent){
      newBalance = (amount! * charge!) / 100 + amount;
    }else{
      newBalance =  amount! + charge!;
    }
    return newBalance;
  }


  static String availableBalance(){
    String? currencySymbol = Get.find<SplashController>().configModel!.currencySymbol;
    String currentBalance = Get.find<ProfileController>().profileModel!.balance!.toStringAsFixed(2);
    return Get.find<SplashController>().configModel!.currencyPosition == 'left' ?  '$currencySymbol$currentBalance' : '$currentBalance$currencySymbol';

  }
  static String newBalanceWithDebit({required double inputBalance, required double charge}){
    String? currencySymbol = Get.find<SplashController>().configModel!.currencySymbol;
    String currentBalance = (Get.find<ProfileController>().profileModel!.balance! - (inputBalance+charge)).toStringAsFixed(2);
    return Get.find<SplashController>().configModel!.currencyPosition == 'left' ?  '$currencySymbol$currentBalance' : '$currentBalance$currencySymbol';

  }

  static String newBalanceWithCredit({required double inputBalance}){
    String? currencySymbol = Get.find<SplashController>().configModel!.currencySymbol;
    String currentBalance = (Get.find<ProfileController>().profileModel!.balance! + inputBalance).toStringAsFixed(2);
    return Get.find<SplashController>().configModel!.currencyPosition == 'left' ?  '$currencySymbol$currentBalance' : '$currentBalance$currencySymbol';

  }

  static String balanceInputHint(){
    String? currencySymbol = Get.find<SplashController>().configModel!.currencySymbol;
    String balance = '0';
    return Get.find<SplashController>().configModel!.currencyPosition == 'left' ? '$currencySymbol$balance' : '$balance$currencySymbol';

  }
  static String balanceWithSymbol({String? balance}){
    String? currencySymbol = Get.find<SplashController>().configModel!.currencySymbol;
    return Get.find<SplashController>().configModel!.currencyPosition == 'left' ?  '$currencySymbol$balance' : '$balance$currencySymbol';

  }
}
