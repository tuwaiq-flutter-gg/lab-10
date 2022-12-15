import 'package:faisal_lab10/Languages.dart';
import 'package:faisal_lab10/View/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: WelcomePage(),
      locale: Get.deviceLocale,
      translations: Languages(),
    );
  }
}
