
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (v){}),
        RichText(
            text: TextSpan(
              children: [
          TextSpan(text: " I agre On ".tr, style: TextStyle(color: Colors.black)),
          TextSpan(
              text: "Terms & Conditions".tr,
              style: const TextStyle(
                color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.defaultDialog(
                    title: "Terms & Conditions".tr,
                    titleStyle: TextStyle(color: Colors.black),
                    middleText:
                        "A Terms and Conditions agreement".tr,
                    middleTextStyle: TextStyle(
                      color: Colors.black,
                    ),
                  );
                }),
        ])),
      ],
    );
  }
}