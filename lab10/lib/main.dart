import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lab10/Translation/TranString.dart';
import 'package:lab10/screens/Login.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: TranString(),
      locale: Locale("en","US"),
      home:Login() ,
    );
  }
}