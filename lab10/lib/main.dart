import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/controller/localController.dart';
import 'package:lab10/local/local.dart';
import 'package:lab10/view/loginPage.dart';

void main()  {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   MyLocaleController myLocaleController= Get.put(MyLocaleController());
    return GetMaterialApp(
      locale: Get.deviceLocale,
      translations: MyLocale(),
      home: LoginPage(),
    );
  }
}
