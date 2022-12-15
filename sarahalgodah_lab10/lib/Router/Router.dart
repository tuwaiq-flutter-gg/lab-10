
import 'package:get/get.dart';
import 'package:sarahalgodah_lab10/Router/Binding.dart';
import 'package:sarahalgodah_lab10/View/Login.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: Routename.login, page:  () => Login(), binding: BindingClass() ),
];

abstract class Routename {
  
  static String login = "/Login";
}