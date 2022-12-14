import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_11/Language/Language.dart';
import 'package:lab_11/Route/NameRoute.dart';
import 'package:lab_11/Viwe/Login.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      initialRoute: NameRoute.Login,
      getPages: routerApp,
      locale: Get.deviceLocale,
      supportedLocales: [const Locale("en", "US"), const Locale("ar", "SA")],
      fallbackLocale: Locale("en", "US"),
      translations: Languages(),
       localizationsDelegates: GlobalMaterialLocalizations.delegates,
 
      
    
      
    );
  }
}