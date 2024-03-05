import 'package:flutter/material.dart';
import 'package:six_cash/features/language/domain/models/language_model.dart';
import 'package:six_cash/util/app_constants.dart';

class LanguageRepo {
  List<LanguageModel> getAllLanguages({BuildContext? context}) {
    return AppConstants.languages;
  }
}
