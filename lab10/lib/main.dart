import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/locale.dart';

import 'rigester/Signin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Color.fromARGB(255, 0, 47, 218),
        primaryColor: Color.fromARGB(255, 0, 47, 218),
        
      ),
      home: signin(),
    );
  }
}
