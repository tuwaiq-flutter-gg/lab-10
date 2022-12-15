import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarahalgodah_lab10/Localizations/Languages.dart';
import 'package:sarahalgodah_lab10/Router/Router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routename.login ,
      getPages: getPages,
      locale: Get.deviceLocale,
      translations: Languages(),
      
    );
  }
}
