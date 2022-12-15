import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rakan_lab10/local-Languages/local-Language.dart';

import 'views/loginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Language(),
      locale: Get.deviceLocale,
      home: LoginPage(),
    );
  }
}
