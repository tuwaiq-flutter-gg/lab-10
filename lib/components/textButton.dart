import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class textButton extends StatelessWidget {
  textButton(
      {super.key, required this.name, required this.underline, this.onPressed});
  final String name;
  bool underline;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        enableFeedback: false,
      ),
      child: Text(
        "${name.toString()}".tr,
        style: TextStyle(
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none,
          fontSize: 16,
          color: Colors.black54,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
