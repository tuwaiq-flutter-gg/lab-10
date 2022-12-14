
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/cupertino.dart';

class MyLocaleController extends GetxController{
 
 void changetLang (String codelang){
 Locale locale = Locale(codelang);
 Get.updateLocale(locale);

 }



}