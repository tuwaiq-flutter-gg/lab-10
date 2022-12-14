import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class TextFieldStyl extends StatelessWidget {
  TextFieldStyl({super.key , required this.Numberlang ,required this.Myicon});

  String? Numberlang;
  Icon? Myicon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
            labelText: "${Numberlang}".tr,
            icon: Myicon),
      ),
    );
  }
}
