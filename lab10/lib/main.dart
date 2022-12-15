import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/views/signin.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'model/lang.dart';


void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
          localizationsDelegates: [GlobalMaterialLocalizations.delegate,GlobalCupertinoLocalizations.delegate,GlobalWidgetsLocalizations.delegate],
locale: Get.deviceLocale,
supportedLocales: [Locale("ar","SA"),Locale("en","US")],
fallbackLocale: Locale("ar","SA"),
  translations: Language(),
      home: SignIn(),
    );
  }
}
  