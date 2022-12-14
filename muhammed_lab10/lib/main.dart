import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:muhammed_lab10/login.dart';

import 'local lang/LocalLang.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
          localizationsDelegates: [GlobalMaterialLocalizations.delegate,GlobalCupertinoLocalizations.delegate,GlobalWidgetsLocalizations.delegate],
locale: Get.deviceLocale,
supportedLocales: [Locale("ar","SA"),Locale("en","US")],
fallbackLocale: Locale("ar","SA"),
  translations: Language(),
      home: login(),
    );
  }
}