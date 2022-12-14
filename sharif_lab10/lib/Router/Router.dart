// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:sharif_hw12/Router/BindingClasses.dart';
import 'package:sharif_hw12/src/LogInScreen.dart';

List<GetPage<dynamic>>? routerApp = [
  GetPage(
    name: NameRoute.logIn,
    page: () => LogIn(),
    binding: LogInScreenBinding(),
  ),
];

abstract class NameRoute {
  static String logIn = "/LogIn";
}
