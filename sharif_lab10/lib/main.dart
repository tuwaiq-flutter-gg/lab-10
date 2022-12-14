// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharif_hw12/Router/Router.dart';
import 'Languages/LocalLang.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      initialRoute: NameRoute.logIn,
      getPages: routerApp,
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale("ar", "SA"),
      supportedLocales: [Locale("en", "US"), Locale("ar", "SA")],
    );
  }
}
