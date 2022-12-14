


import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/state_manager.dart';
import 'package:lab10/Viws/logIn.dart';
import 'package:lab10/lokal/lokal.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      translations: MyLokal() ,
      
      
      
      
      home: LogIn (),);
  }
}