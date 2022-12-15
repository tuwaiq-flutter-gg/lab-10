

import 'package:get/get.dart';
import 'package:sarahalgodah_lab10/Controllers/LanguagesControllers.dart';

class BindingClass extends Bindings {
  @override
  
  void dependencies() {
    Get.put(LanguagesController());
  }
  
}