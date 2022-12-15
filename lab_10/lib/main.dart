import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:lab_10/Pages/HomePage.dart';
import 'package:lab_10/Router/Language.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: Get.deviceLocale,
        supportedLocales: [Locale("ar", "SA"), Locale("en", "US")],
        fallbackLocale: Locale("en", "US"),
        translations: Language(),
        //localizationsDelegates: GlobalMaterialLocalizations.delegates,
        home: SignIn());
  }
}
