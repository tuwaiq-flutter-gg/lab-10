import 'package:flutter/material.dart';
import 'package:lap10/page/Language.dart';
import 'package:lap10/singin.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
  
}
  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      translations: Language(),
      
      home: Scaffold(body: signin(),),
    );
  }
}