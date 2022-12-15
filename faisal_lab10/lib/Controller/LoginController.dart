import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  bool chek = false;

  convertLanguage() {
    if (Get.locale == Locale("en", "US")) {
      Get.updateLocale(Locale("ar", "SA"));
    } else {
      Get.updateLocale(Locale("en", "US"));
    }
  }
}
