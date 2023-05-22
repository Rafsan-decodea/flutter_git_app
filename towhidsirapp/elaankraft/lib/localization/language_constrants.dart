import 'package:flutter/material.dart';
import 'package:flutter_sixvalley_ecommerce/localization/app_localization.dart';

String? getTranslated(String key, BuildContext context) {
  return AppLocalization.of(context)!.translate(key);
}

// String? getTranslated(String key, BuildContext context) {
//   final localization = AppLocalization.of(context);
//   return localization?.translate(key);
// }
