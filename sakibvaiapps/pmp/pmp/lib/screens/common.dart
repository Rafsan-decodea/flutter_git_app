import 'dart:io';

import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:pmp/common/common.dart';
import 'package:pmp/db/common.dart';
import 'package:pmp/db/screen.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../db/biometric_storage_data.dart';
import 'main_screen.dart';
import 'passwords_screen.dart';

const screenToRouteName = {
  Screen.main: MainScreen.routeName,
  Screen.passwords: PasswordsScreen.routeName,
  Screen.notes: '',
  Screen.idCards: '',
  Screen.identities: '',
};

final bool _isMobile = Platform.isAndroid || Platform.isIOS;

Future<bool> bioAuth(String username) async {
  BiometricStorageData bioData;
  try {
    bioData = await BiometricStorageData.fromLocker(username);
  } catch (e) {
    return false;
  }
  if (getHash(bioData.password).toString() != data.getPasswordHash(username)) {
    return false;
  }
  data.info.value.lastUsername = username;
  await data.info.save();
  data.loadAccount(username, getEncrypter(bioData.password));
  return true;
}

void openUrl(String url) {
  if (_isMobile) {
    FlutterWebBrowser.openWebPage(url: url);
    return;
  }
  launchUrlString(url);
}
