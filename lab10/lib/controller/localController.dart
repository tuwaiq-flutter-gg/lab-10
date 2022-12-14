import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyLocaleController extends GetxController {
  void changeLang({required String coodLang}) {
    Locale locale = Locale(coodLang);

    Get.updateLocale(locale);
  }

  // saveLang() async {
  //    preferences = await SharedPreferences.getInstance();
  //   preferences!.setString("lang", coodLang);
  //   Locale initaLang =
  //       preferences!.getString("lang") == "ar" ? Locale("ar") : Locale("en");
  // }
}
