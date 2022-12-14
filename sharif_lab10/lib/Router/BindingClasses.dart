// ignore_for_file: file_names

import 'package:get/instance_manager.dart';
import 'package:sharif_hw12/Controllers/LogInScreenController.dart';

class LogInScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LogInController());
  }
}
