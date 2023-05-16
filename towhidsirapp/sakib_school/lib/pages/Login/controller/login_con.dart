import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../../Utils/constant.dart';

class LoginController extends GetxController {
  final _box = GetStorage();

  login(email, password) async {
    var response = await http.post(
      Uri.parse("$url/api/login"),
      body: {"email": "rafsan@gmail.com", "password": 123, "role_id": 5},
    );

    var jsonData = jsonDecode(response.body);
    print(jsonData);
    if (response.statusCode == 200) {
      var token = jsonData['access_token'];
      var user_id = jsonData['user']['user_id'];
      print("User Id $user_id");
      _box.write(userId, user_id);

      var bus_id = jsonData['bus_id'];
      print("Bus Id $bus_id");
      _box.write(busId, bus_id);

      print(" thohid $token");
      var type = jsonData['user']['type'];
      print(" thohid $type");
      _box.write(token, token);
      if (type == 'Manager') {
        // Get.to(DeshBoard());
      }
      if (type == 'Guardian') {
        // Get.to(GuardianHome());
      }
    } else {
      Get.snackbar(
        "Login Error",
        "User name or Password is Wrong",
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      );
    }
  }
}
