import 'package:flutter/material.dart';

class TextF extends StatelessWidget {
  TextF({super.key, this.hint});
  String? hint;
  TextEditingController? controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        width: 320,
        height: 60,
        child: TextField(
            controller: controller,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: Color(0xffECF0F1),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            )),
      ),
    );
  }
}
