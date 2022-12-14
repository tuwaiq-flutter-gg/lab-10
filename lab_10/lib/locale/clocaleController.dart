import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LocaleController extends GetxController {
  void changeLanguage(String CodeLanguage) {
    Locale locale = Locale(CodeLanguage);
    Get.updateLocale(locale);
  }
}
