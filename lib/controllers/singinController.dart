import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signinController extends GetxController {
  bool checkValue = false;

  changeCheckValue() {
    checkValue = !checkValue;
    update();
  }
}
