import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LangControler extends GetxController {
  langVhange(String LA) {
    Locale laLAng = Locale(LA);
    Get.updateLocale(laLAng); 
  }
}
