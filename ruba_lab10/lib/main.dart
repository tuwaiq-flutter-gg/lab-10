import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruba_lab10/Translation.dart';
import 'package:ruba_lab10/signupPage.dart';

main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: translation(),
      locale: Locale("en","US"),
      home: signUp(),
    );
  }
}