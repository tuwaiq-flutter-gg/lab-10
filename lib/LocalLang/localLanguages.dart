import "package:get/get.dart";
import 'package:flutter/material.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {

    "en_US": {"d1": "English"},
    "ar_SA": {"d1": "عربي"}
  };


}
local(){
Locale: Get.deviceLocale;
supportedLocales:[Locale("en", "US"),Locale("ar", "SA")];
fallbackLocale:const Locale("ar","SA");
translations: Languages();
}