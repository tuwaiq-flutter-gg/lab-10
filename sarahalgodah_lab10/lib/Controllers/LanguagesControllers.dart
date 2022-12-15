import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LanguagesController extends GetxController {

changLanguages( {required String codeLanguages}){
  Locale locale = Locale(codeLanguages);
  Get.updateLocale(locale);
}

}