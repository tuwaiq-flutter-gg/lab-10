import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaledalwadai/view/Login.dart';
import 'package:khaledalwadai/Modle/local.dart';
import 'package:khaledalwadai/Controler/langcontrol.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get local => null;

  @override
  Widget build(BuildContext context) {
    Get.put(LangControler()); 
    return GetMaterialApp(
  
      translations: Trlocal(),
      home: Login(),
    );
  }
}
