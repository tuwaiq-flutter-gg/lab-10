import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:lab_10/locale/clocaleController.dart';
import 'package:lab_10/locale/locale.dart';
import 'package:lab_10/view/singUp.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(LocaleController()); //Inject it in the main place so that I can reach it from anywhere

    return GetMaterialApp(
      locale: Get.deviceLocale,  //iPhone language
      translations: MyLanguage(),
      home: SingUp(),
    );
  }
}
