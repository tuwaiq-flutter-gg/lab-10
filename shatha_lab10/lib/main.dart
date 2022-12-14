import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_lab10/Local-Lang/language.dart';
import 'package:shatha_lab10/controller/language_controller.dart';
import 'package:shatha_lab10/view/sign_up.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController langController = Get.put(LanguageController());
    return GetMaterialApp(
      locale: langController.currentLang,
      supportedLocales: const [Locale('en','US'), Locale('ar','SA')],
      // fallbackLocale: const Locale('Ar'),
      translations: Languages(),
      home: Signup(),
    );
  }
}

