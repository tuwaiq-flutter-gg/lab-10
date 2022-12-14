import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:ruba_lab10/DectionartLanguage/Dectionary.dart';
import 'package:ruba_lab10/Screen/Home.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    // localizationsDelegates: [GlobalMaterialLocalizations.delegate,GlobalWidgetsLocalizations.delegate],
      locale: Get.deviceLocale,
      supportedLocales: [Locale("en", "US"), Locale("ar", "SA")],
      translations: Languages(),
      localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    );
  }
}