import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  Map<String, dynamic> userData = {};

  void goToMainPage() {
    userData["user"] = user.value.text;
    userData["password"] = password.value.text;
    user.clear();
    password.clear();
    Get.toNamed('mainpage');
  }
}
