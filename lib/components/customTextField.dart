import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class customTextField extends StatelessWidget {
  customTextField(
      {super.key,
      required this.name,
      this.prefixIcon,
      required this.isPass,
      this.keyboardType,
      this.controller,
      this.hint});
  final String name;
  final String? hint;
  final Icon? prefixIcon;
  bool isPass = false;

  TextInputType? keyboardType = TextInputType.text;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                // textAlign: TextAlign.left,
                name.toString(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: Get.height * 0.05,
              width: Get.width * 0.9,
              child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: keyboardType,
                  obscureText: isPass,
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hint,
                    prefixIcon: prefixIcon,
                    isCollapsed: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
