import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController{

  var currentLang = Get.locale ?? Get.deviceLocale;
    
  void changeLanguage(String languageCode){

    Locale current = Locale(languageCode);
    Get.updateLocale(current);

    currentLang = Get.locale;

  }

  getLanguagedirection(){
    if (currentLang == 'en_US' || currentLang == 'en') {
      return TextAlign.left;
    } else {
      return TextAlign.right;
    }
  }

}