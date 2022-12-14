import 'package:get/get.dart';
import 'package:lab_11/Viwe/Login.dart';

List<GetPage<dynamic>>? routerApp = [
  GetPage(name: NameRoute.Login, page: () => Login1()),
  
];

abstract class NameRoute {
  static String Login = "/Login1";
}