import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization/localization.dart';
import 'package:hadeel_lab10/Languages.dart';
import 'package:hadeel_lab10/views/Home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      supportedLocales: [Locale("Ar", "SA"), Locale("en", "US")],
      fallbackLocale: Locale("Ar", "SA"),
      translations: Languages(),
    );
  }
}
